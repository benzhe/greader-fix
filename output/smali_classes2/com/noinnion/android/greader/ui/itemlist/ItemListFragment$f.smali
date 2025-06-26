.class public Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbn6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$f;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 11

    .line 1
    instance-of v0, p1, Landroid/database/Cursor;

    if-eqz v0, :cond_8

    .line 2
    check-cast p1, Landroid/database/Cursor;

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$f;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->m:Z

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$f;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-boolean v2, v2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->n:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    if-nez v0, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "_id"

    .line 7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$f;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-wide v6, v2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->o:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    int-to-long v6, v0

    iget-wide v8, v2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->p:J

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2

    .line 9
    :cond_1
    sput-boolean v3, Lon6;->c:Z

    .line 10
    :cond_2
    iput-wide v4, v2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->o:J

    int-to-long v4, v0

    .line 11
    iput-wide v4, v2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->p:J

    :cond_3
    if-lez v0, :cond_4

    .line 12
    sget-object v2, Lon6;->a:Lew6;

    iget v2, v2, Lew6;->h:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x32

    if-lt v0, v2, :cond_4

    .line 13
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$f;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v2, v2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    .line 14
    iget-object v2, v2, Ler6;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 15
    :cond_4
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$f;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v2, v2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    .line 16
    iget-object v2, v2, Ler6;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    :goto_1
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$f;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v2, v2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    invoke-virtual {v2, p1}, Lt27;->changeCursor(Landroid/database/Cursor;)V

    .line 18
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$f;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-nez v0, :cond_6

    .line 19
    sget-object p1, Lon6;->a:Lew6;

    iget-boolean p1, p1, Lew6;->f:Z

    if-eqz p1, :cond_5

    .line 20
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$f;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v0, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vEmptyMessage:Landroid/widget/TextView;

    const v2, 0x7f1101d0

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$f;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v0, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vEmptyMessage:Landroid/widget/TextView;

    const v2, 0x7f1101cf

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$f;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-boolean v0, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->s:Z

    if-eqz v0, :cond_7

    .line 23
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-static {p1, v1}, Landroid/support/v7/widget/LayoutManagerHelper;->scrollToPosition(Landroidx/recyclerview/widget/RecyclerView$m;I)V

    .line 24
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$f;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iput-boolean v1, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->s:Z

    goto :goto_3

    .line 25
    :cond_7
    iget v0, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->h:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_8

    .line 26
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-static {p1, v0}, Landroid/support/v7/widget/LayoutManagerHelper;->scrollToPosition(Landroidx/recyclerview/widget/RecyclerView$m;I)V

    .line 27
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$f;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iput v1, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->h:I

    :cond_8
    :goto_3
    return-void
.end method
