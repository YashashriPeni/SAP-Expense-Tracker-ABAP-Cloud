REPORT zexpense_report.

TABLES: zexpense_tracker.

DATA:
  lt_expense TYPE TABLE OF zexpense_tracker,
  lv_total   TYPE p DECIMALS 2,
  lv_count   TYPE i,
  lv_highest TYPE p DECIMALS 2.

SELECT-OPTIONS:
  s_user FOR zexpense_tracker-user_id,
  s_cat  FOR zexpense_tracker-category_id.

SELECT *
  FROM zexpense_tracker
  INTO TABLE lt_expense
  WHERE user_id     IN s_user
    AND category_id IN s_cat.

IF lt_expense IS NOT INITIAL.

  LOOP AT lt_expense INTO DATA(ls_expense).

    lv_total = lv_total + ls_expense-amount.

    IF ls_expense-amount > lv_highest.
      lv_highest = ls_expense-amount.
    ENDIF.

  ENDLOOP.

  lv_count = lines( lt_expense ).

  WRITE: / 'Expense Dashboard'.
  WRITE: / '-----------------------------'.
  WRITE: / 'Total Expenses   : ', lv_total.
  WRITE: / 'Highest Expense  : ', lv_highest.
  WRITE: / 'Expense Count    : ', lv_count.
  WRITE: / '-----------------------------'.

  SKIP 2.

  LOOP AT lt_expense INTO ls_expense.

    WRITE: /
      ls_expense-expense_id,
      ls_expense-user_id,
      ls_expense-category_id,
      ls_expense-amount,
      ls_expense-description,
      ls_expense-expense_date.

  ENDLOOP.

ELSE.

  WRITE: / 'No Expense Records Found'.

ENDIF.
