.class public final Lcom/google/android/material/datepicker/MaterialCalendarGridView;
.super Landroid/widget/GridView;
.source "SourceFile"


# instance fields
.field public final e:Ljava/util/Calendar;

.field public final f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {}, Lp75;->d()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->e:Ljava/util/Calendar;

    .line 4
    invoke-virtual {p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lh75;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget p1, Lcom/google/android/material/R$id;->cancel_button:I

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextFocusLeftId(I)V

    .line 6
    sget p1, Lcom/google/android/material/R$id;->confirm_button:I

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextFocusRightId(I)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 8
    sget p2, Lcom/google/android/material/R$attr;->nestedScrollable:I

    invoke-static {p1, p2}, Lh75;->e(Landroid/content/Context;I)Z

    move-result p1

    .line 9
    iput-boolean p1, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->f:Z

    .line 10
    new-instance p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView$a;

    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView$a;-><init>(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-static {p0, p1}, Lha;->s(Landroid/view/View;Lv9;)V

    return-void
.end method


# virtual methods
.method public a()Li75;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Li75;

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Li75;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Li75;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Li75;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Li75;

    move-result-object v1

    .line 3
    iget-object v2, v1, Li75;->f:Lcom/google/android/material/datepicker/DateSelector;

    .line 4
    iget-object v3, v1, Li75;->h:Ly65;

    .line 5
    invoke-virtual {v1}, Li75;->b()I

    move-result v4

    invoke-virtual {v1, v4}, Li75;->c(I)Ljava/lang/Long;

    move-result-object v4

    .line 6
    invoke-virtual {v1}, Li75;->d()I

    move-result v5

    invoke-virtual {v1, v5}, Li75;->c(I)Ljava/lang/Long;

    move-result-object v5

    .line 7
    invoke-interface {v2}, Lcom/google/android/material/datepicker/DateSelector;->y()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls9;

    .line 8
    iget-object v7, v6, Ls9;->a:Ljava/lang/Object;

    if-eqz v7, :cond_12

    iget-object v8, v6, Ls9;->b:Ljava/lang/Object;

    if-nez v8, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 10
    iget-object v6, v6, Ls9;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 11
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v13, 0x1

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    if-nez v11, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v6, v14, v16

    if-gtz v6, :cond_3

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v6, v14, v16

    if-gez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-eqz v6, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    invoke-static/range {p0 .. p0}, Lc50;->n0(Landroid/view/View;)Z

    move-result v6

    .line 14
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v11, 0x5

    cmp-long v16, v7, v14

    if-gez v16, :cond_8

    .line 15
    invoke-virtual {v1}, Li75;->b()I

    move-result v7

    .line 16
    iget-object v8, v1, Li75;->e:Lcom/google/android/material/datepicker/Month;

    iget v8, v8, Lcom/google/android/material/datepicker/Month;->h:I

    rem-int v8, v7, v8

    if-nez v8, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_4

    :cond_6
    if-nez v6, :cond_7

    add-int/lit8 v8, v7, -0x1

    .line 17
    invoke-virtual {v0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    goto :goto_4

    :cond_7
    add-int/lit8 v8, v7, -0x1

    .line 18
    invoke-virtual {v0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    goto :goto_4

    .line 19
    :cond_8
    iget-object v14, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->e:Ljava/util/Calendar;

    invoke-virtual {v14, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 20
    iget-object v7, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->e:Ljava/util/Calendar;

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v1, v7}, Li75;->a(I)I

    move-result v7

    .line 21
    invoke-virtual {v0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 22
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v14

    .line 23
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v16, v9, v14

    if-lez v16, :cond_c

    .line 24
    invoke-virtual {v1}, Li75;->d()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v10

    sub-int/2addr v10, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/lit8 v10, v9, 0x1

    .line 25
    iget-object v11, v1, Li75;->e:Lcom/google/android/material/datepicker/Month;

    iget v11, v11, Lcom/google/android/material/datepicker/Month;->h:I

    rem-int/2addr v10, v11

    if-nez v10, :cond_9

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_a

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getWidth()I

    move-result v10

    goto :goto_6

    :cond_a
    if-nez v6, :cond_b

    .line 27
    invoke-virtual {v0, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    goto :goto_6

    .line 28
    :cond_b
    invoke-virtual {v0, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    goto :goto_6

    .line 29
    :cond_c
    iget-object v13, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->e:Ljava/util/Calendar;

    invoke-virtual {v13, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 30
    iget-object v9, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->e:Ljava/util/Calendar;

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v1, v9}, Li75;->a(I)I

    move-result v9

    .line 31
    invoke-virtual {v0, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 32
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v11

    .line 33
    :goto_6
    invoke-virtual {v1, v7}, Li75;->getItemId(I)J

    move-result-wide v13

    long-to-int v11, v13

    .line 34
    invoke-virtual {v1, v9}, Li75;->getItemId(I)J

    move-result-wide v13

    long-to-int v14, v13

    :goto_7
    if-gt v11, v14, :cond_12

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v13

    mul-int v13, v13, v11

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v15

    add-int/2addr v15, v13

    add-int/lit8 v15, v15, -0x1

    .line 37
    invoke-virtual {v0, v13}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 38
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v17

    iget-object v12, v3, Ly65;->a:Lx65;

    .line 39
    iget-object v12, v12, Lx65;->a:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    add-int v12, v17, v12

    .line 40
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v16

    iget-object v0, v3, Ly65;->a:Lx65;

    .line 41
    iget-object v0, v0, Lx65;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v16, v0

    if-nez v6, :cond_f

    if-le v13, v7, :cond_d

    const/4 v13, 0x0

    goto :goto_8

    :cond_d
    move v13, v8

    :goto_8
    if-le v9, v15, :cond_e

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getWidth()I

    move-result v15

    goto :goto_b

    :cond_e
    move v15, v10

    goto :goto_b

    :cond_f
    if-le v9, v15, :cond_10

    const/4 v15, 0x0

    goto :goto_9

    :cond_10
    move v15, v10

    :goto_9
    if-le v13, v7, :cond_11

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getWidth()I

    move-result v13

    goto :goto_a

    :cond_11
    move v13, v8

    :goto_a
    move/from16 v24, v15

    move v15, v13

    move/from16 v13, v24

    :goto_b
    int-to-float v13, v13

    int-to-float v12, v12

    int-to-float v15, v15

    int-to-float v0, v0

    move-object/from16 v16, v1

    .line 44
    iget-object v1, v3, Ly65;->h:Landroid/graphics/Paint;

    move-object/from16 v18, p1

    move/from16 v19, v13

    move/from16 v20, v12

    move/from16 v21, v15

    move/from16 v22, v0

    move-object/from16 v23, v1

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    goto :goto_7

    :cond_12
    move-object/from16 v16, v1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    if-eqz p1, :cond_2

    const/16 p1, 0x21

    if-ne p2, p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Li75;

    move-result-object p1

    invoke-virtual {p1}, Li75;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x82

    if-ne p2, p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Li75;

    move-result-object p1

    invoke-virtual {p1}, Li75;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result p2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p2, v1, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Li75;

    move-result-object v1

    invoke-virtual {v1}, Li75;->b()I

    move-result v1

    if-lt p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0x13

    if-ne p2, p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Li75;

    move-result-object p1

    invoke-virtual {p1}, Li75;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    return v2

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->f:Z

    if-eqz v0, :cond_0

    const p2, 0xffffff

    const/high16 v0, -0x80000000

    .line 2
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/widget/GridView;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .line 2
    instance-of v0, p1, Li75;

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-class v2, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Li75;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%1$s must have its Adapter set to a %2$s"

    .line 7
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSelection(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Li75;

    move-result-object v0

    invoke-virtual {v0}, Li75;->b()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Li75;

    move-result-object p1

    invoke-virtual {p1}, Li75;->b()I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    :goto_0
    return-void
.end method
