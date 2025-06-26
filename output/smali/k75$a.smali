.class public Lk75$a;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk75;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Z)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    .line 2
    sget v0, Lcom/google/android/material/R$id;->month_title:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lk75$a;->a:Landroid/widget/TextView;

    .line 3
    sget-object v1, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v1, Lka;

    sget v2, Landroidx/core/R$id;->tag_accessibility_heading:I

    const-class v3, Ljava/lang/Boolean;

    const/16 v4, 0x1c

    invoke-direct {v1, v2, v3, v4}, Lka;-><init>(ILjava/lang/Class;I)V

    .line 5
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v1, v0, v2}, Lka;->d(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1, v0}, Lha$b;->c(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lka;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-static {v0}, Lha;->g(Landroid/view/View;)Lv9;

    move-result-object v3

    if-nez v3, :cond_2

    .line 10
    new-instance v3, Lv9;

    invoke-direct {v3}, Lv9;-><init>()V

    .line 11
    :cond_2
    invoke-static {v0, v3}, Lha;->s(Landroid/view/View;Lv9;)V

    .line 12
    iget v1, v1, Lha$b;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    invoke-static {v0, v5}, Lha;->k(Landroid/view/View;I)V

    .line 14
    :cond_3
    :goto_1
    sget v1, Lcom/google/android/material/R$id;->month_grid:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    iput-object p1, p0, Lk75$a;->b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    if-nez p2, :cond_4

    const/16 p1, 0x8

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method
