.class public Lf75;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lk75;

.field public final synthetic f:La75;


# direct methods
.method public constructor <init>(La75;Lk75;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf75;->f:La75;

    iput-object p2, p0, Lf75;->e:Lk75;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf75;->f:La75;

    invoke-virtual {p1}, La75;->d()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->l1()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 2
    iget-object v0, p0, Lf75;->f:La75;

    .line 3
    iget-object v0, v0, La75;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lf75;->f:La75;

    iget-object v1, p0, Lf75;->e:Lk75;

    invoke-virtual {v1, p1}, Lk75;->a(I)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    invoke-virtual {v0, p1}, La75;->h(Lcom/google/android/material/datepicker/Month;)V

    :cond_0
    return-void
.end method
