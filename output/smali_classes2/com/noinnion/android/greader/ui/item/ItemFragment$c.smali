.class public final Lcom/noinnion/android/greader/ui/item/ItemFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/noinnion/android/view/viewpager/FixedViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/item/ItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/item/ItemFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$c;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$c;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->Q:Z

    return-void
.end method

.method public c(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$c;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->g:Lcom/noinnion/android/greader/ui/item/ItemFragment$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    iget-object v2, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 4
    iget-object v2, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment;->v:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    .line 5
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    :cond_0
    iget-object v2, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 7
    iget-object v5, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-nez v6, :cond_1

    move-object v5, v1

    :cond_1
    check-cast v5, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-eqz v5, :cond_2

    iput-boolean v3, v5, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->e:Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$c;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 9
    iput p1, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->j:I

    .line 10
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->h:Lap6$a;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0, p1}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$c;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 13
    invoke-virtual {v0, p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->j(I)V

    .line 14
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$c;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 15
    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->D()V

    .line 16
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$c;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v0, p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->M(I)V

    .line 17
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$c;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 18
    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object v0

    .line 19
    instance-of v2, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-nez v2, :cond_5

    move-object v0, v1

    :cond_5
    check-cast v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    .line 20
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$c;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 21
    invoke-virtual {v2, v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->h(Lcom/noinnion/android/reader/ui/widget/ItemWebView;)V

    .line 22
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$c;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 23
    iget-object v2, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment;->h:Lap6$a;

    const/4 v3, -0x1

    if-eqz v2, :cond_6

    .line 24
    invoke-virtual {v2}, Landroid/database/CursorWrapper;->getCount()I

    move-result v2

    goto :goto_1

    :cond_6
    const/4 v2, -0x1

    :goto_1
    add-int/lit8 v4, v2, -0x1

    const/4 v5, 0x1

    if-ne p1, v4, :cond_9

    .line 25
    rem-int/lit8 v2, v2, 0x32

    if-nez v2, :cond_9

    .line 26
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$c;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 27
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 28
    iget-object v4, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->h:Lap6$a;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/database/CursorWrapper;->getCount()I

    move-result v3

    .line 29
    :cond_7
    sget-object v4, Lon6;->a:Lew6;

    iget v6, v4, Lew6;->h:I

    add-int/2addr v6, v5

    mul-int/lit8 v7, v6, 0x32

    if-gt v7, v3, :cond_8

    .line 30
    iput v6, v4, Lew6;->h:I

    .line 31
    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.noinnion.android.greader.reader.action.FORCE_REFRESH_UI"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {v2}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v2

    invoke-virtual {v2, v3}, Lyd;->c(Landroid/content/Intent;)Z

    .line 33
    invoke-static {p1}, Lsd;->b(Ldd;)Lsd;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1, p1}, Lsd;->c(ILandroid/os/Bundle;Lsd$a;)Lwd;

    :cond_9
    if-eqz v0, :cond_a

    .line 34
    iput-boolean v5, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->r:Z

    :cond_a
    return-void
.end method
