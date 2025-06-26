.class public Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$b;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->i(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$b;->d:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iput p2, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$b;->c:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)I
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$b;->d:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$b;->c:I

    div-int/2addr p1, v0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x6

    div-int/2addr v0, p1

    return v0
.end method
