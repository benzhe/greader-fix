.class public final La75;
.super Lm75;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La75$f;,
        La75$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lm75<",
        "TS;>;"
    }
.end annotation


# static fields
.field public static final synthetic p:I


# instance fields
.field public f:I

.field public g:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation
.end field

.field public h:Lcom/google/android/material/datepicker/CalendarConstraints;

.field public i:Lcom/google/android/material/datepicker/Month;

.field public j:La75$e;

.field public k:Ly65;

.field public l:Landroidx/recyclerview/widget/RecyclerView;

.field public m:Landroidx/recyclerview/widget/RecyclerView;

.field public n:Landroid/view/View;

.field public o:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm75;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 1
    iget-object v0, p0, La75;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public final e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, La75;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, La75$a;

    invoke-direct {v1, p0, p1}, La75$a;-><init>(La75;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public h(Lcom/google/android/material/datepicker/Month;)V
    .locals 6

    .line 1
    iget-object v0, p0, La75;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    check-cast v0, Lk75;

    .line 2
    iget-object v1, v0, Lk75;->b:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 3
    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->e:Lcom/google/android/material/datepicker/Month;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/material/datepicker/Month;->w(Lcom/google/android/material/datepicker/Month;)I

    move-result v1

    .line 5
    iget-object v2, p0, La75;->i:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v2}, Lk75;->b(Lcom/google/android/material/datepicker/Month;)I

    move-result v0

    sub-int v0, v1, v0

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-le v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 7
    :goto_1
    iput-object p1, p0, La75;->i:Lcom/google/android/material/datepicker/Month;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 8
    iget-object p1, p0, La75;->m:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 9
    invoke-virtual {p0, v1}, La75;->e(I)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 10
    iget-object p1, p0, La75;->m:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 11
    invoke-virtual {p0, v1}, La75;->e(I)V

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p0, v1}, La75;->e(I)V

    :goto_2
    return-void
.end method

.method public i(La75$e;)V
    .locals 4

    .line 1
    iput-object p1, p0, La75;->j:La75$e;

    .line 2
    sget-object v0, La75$e;->f:La75$e;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, La75;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    iget-object v0, p0, La75;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    check-cast v0, Lr75;

    iget-object v3, p0, La75;->i:Lcom/google/android/material/datepicker/Month;

    iget v3, v3, Lcom/google/android/material/datepicker/Month;->g:I

    invoke-virtual {v0, v3}, Lr75;->a(I)I

    move-result v0

    .line 6
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$m;->N0(I)V

    .line 7
    iget-object p1, p0, La75;->n:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, La75;->o:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, La75$e;->e:La75$e;

    if-ne p1, v0, :cond_1

    .line 10
    iget-object p1, p0, La75;->n:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, La75;->o:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, La75;->i:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0, p1}, La75;->h(Lcom/google/android/material/datepicker/Month;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La75;->f:I

    const-string v0, "GRID_SELECTOR_KEY"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    iput-object v0, p0, La75;->g:Lcom/google/android/material/datepicker/DateSelector;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/CalendarConstraints;

    iput-object v0, p0, La75;->h:Lcom/google/android/material/datepicker/CalendarConstraints;

    const-string v0, "CURRENT_MONTH_KEY"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/Month;

    iput-object p1, p0, La75;->i:Lcom/google/android/material/datepicker/Month;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 1
    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, La75;->f:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v0, Ly65;

    invoke-direct {v0, p3}, Ly65;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La75;->k:Ly65;

    .line 3
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    iget-object v0, p0, La75;->h:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 5
    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->e:Lcom/google/android/material/datepicker/Month;

    .line 6
    invoke-static {p3}, Lh75;->d(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 7
    sget v1, Lcom/google/android/material/R$layout;->mtrl_calendar_vertical:I

    const/4 v9, 0x1

    goto :goto_0

    .line 8
    :cond_0
    sget v1, Lcom/google/android/material/R$layout;->mtrl_calendar_horizontal:I

    const/4 v9, 0x0

    .line 9
    :goto_0
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 10
    sget p2, Lcom/google/android/material/R$id;->mtrl_calendar_days_of_week:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    .line 11
    new-instance v1, La75$b;

    invoke-direct {v1, p0}, La75$b;-><init>(La75;)V

    invoke-static {p2, v1}, Lha;->s(Landroid/view/View;Lv9;)V

    .line 12
    new-instance v1, Lz65;

    invoke-direct {v1}, Lz65;-><init>()V

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 13
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->h:I

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 14
    invoke-virtual {p2, v2}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 15
    sget p2, Lcom/google/android/material/R$id;->mtrl_calendar_months:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, La75;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    new-instance p2, La75$c;

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p0

    move v7, v9

    invoke-direct/range {v4 .. v9}, La75$c;-><init>(La75;Landroid/content/Context;IZI)V

    .line 18
    iget-object v0, p0, La75;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 19
    iget-object p2, p0, La75;->m:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 20
    new-instance p2, Lk75;

    iget-object v0, p0, La75;->g:Lcom/google/android/material/datepicker/DateSelector;

    iget-object v1, p0, La75;->h:Lcom/google/android/material/datepicker/CalendarConstraints;

    new-instance v4, La75$d;

    invoke-direct {v4, p0}, La75$d;-><init>(La75;)V

    invoke-direct {p2, p3, v0, v1, v4}, Lk75;-><init>(Landroid/content/Context;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;La75$f;)V

    .line 21
    iget-object v0, p0, La75;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 22
    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$integer;->mtrl_calendar_year_selector_span:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 23
    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, p0, La75;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_1

    .line 24
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 25
    iget-object v4, p0, La75;->l:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v5, p3, v0, v3, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 26
    iget-object v0, p0, La75;->l:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lr75;

    invoke-direct {v2, p0}, Lr75;-><init>(La75;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 27
    iget-object v0, p0, La75;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    new-instance v2, Lb75;

    invoke-direct {v2, p0}, Lb75;-><init>(La75;)V

    .line 29
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 30
    :cond_1
    sget v0, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const-string v2, "SELECTOR_TOGGLE_TAG"

    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 33
    new-instance v2, Lc75;

    invoke-direct {v2, p0}, Lc75;-><init>(La75;)V

    invoke-static {v0, v2}, Lha;->s(Landroid/view/View;Lv9;)V

    .line 34
    sget v2, Lcom/google/android/material/R$id;->month_navigation_previous:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    const-string v3, "NAVIGATION_PREV_TAG"

    .line 35
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 36
    sget v3, Lcom/google/android/material/R$id;->month_navigation_next:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    const-string v4, "NAVIGATION_NEXT_TAG"

    .line 37
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, La75;->n:Landroid/view/View;

    .line 39
    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_day_selector_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, La75;->o:Landroid/view/View;

    .line 40
    sget-object v1, La75$e;->e:La75$e;

    invoke-virtual {p0, v1}, La75;->i(La75$e;)V

    .line 41
    iget-object v1, p0, La75;->i:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/material/datepicker/Month;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p0, La75;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Ld75;

    invoke-direct {v4, p0, p2, v0}, Ld75;-><init>(La75;Lk75;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 43
    new-instance v1, Le75;

    invoke-direct {v1, p0}, Le75;-><init>(La75;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    new-instance v0, Lf75;

    invoke-direct {v0, p0, p2}, Lf75;-><init>(La75;Lk75;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance v0, Lg75;

    invoke-direct {v0, p0, p2}, Lg75;-><init>(La75;Lk75;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    :cond_2
    invoke-static {p3}, Lh75;->d(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 47
    new-instance p3, Lyf;

    invoke-direct {p3}, Lyf;-><init>()V

    iget-object v0, p0, La75;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Ldg;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 48
    :cond_3
    iget-object p3, p0, La75;->m:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, La75;->i:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p2, v0}, Lk75;->b(Lcom/google/android/material/datepicker/Month;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget v0, p0, La75;->f:I

    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, La75;->g:Lcom/google/android/material/datepicker/DateSelector;

    const-string v1, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    iget-object v0, p0, La75;->h:Lcom/google/android/material/datepicker/CalendarConstraints;

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, La75;->i:Lcom/google/android/material/datepicker/Month;

    const-string v1, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
