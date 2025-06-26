.class public Llu6$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/noinnion/android/widget/TouchListView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llu6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Llu6;


# direct methods
.method public constructor <init>(Llu6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llu6$c;->a:Llu6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public m(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Llu6$c;->a:Llu6;

    .line 2
    iget-object v0, v0, Llu6;->p:Llu6$f;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lip6;

    .line 4
    iget-object v0, p0, Llu6$c;->a:Llu6;

    .line 5
    iget-object v0, v0, Llu6;->p:Llu6$f;

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Llu6$c;->a:Llu6;

    .line 8
    iget-object v0, v0, Llu6;->p:Llu6$f;

    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 10
    iget-object p1, p0, Llu6$c;->a:Llu6;

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p1, Llu6;->r:Z

    .line 12
    iget-object p1, p1, Llu6;->q:Landroid/widget/Spinner;

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 14
    iget-object p1, p0, Llu6$c;->a:Llu6;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p1

    iput p2, p1, Lhw6;->f:I

    return-void
.end method
