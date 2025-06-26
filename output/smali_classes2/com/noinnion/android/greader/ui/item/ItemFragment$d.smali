.class public final Lcom/noinnion/android/greader/ui/item/ItemFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/item/ItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/item/ItemFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6

    const-string p3, "menu"

    invoke-static {p1, p3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "v"

    invoke-static {p2, p3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p3, p2, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-nez p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-eqz p2, :cond_4

    .line 2
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 3
    new-instance v0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d$a;

    invoke-direct {v0, p0, p3, p2}, Lcom/noinnion/android/greader/ui/item/ItemFragment$d$a;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment$d;Landroid/webkit/WebView$HitTestResult;Lcom/noinnion/android/reader/ui/widget/ItemWebView;)V

    .line 4
    invoke-virtual {p3}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result p2

    const/4 v1, 0x5

    const/16 v2, 0x2d

    const/4 v3, 0x0

    if-eq p2, v1, :cond_3

    invoke-virtual {p3}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result p2

    const/16 v1, 0x8

    if-ne p2, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p3}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result p2

    const/4 v1, 0x7

    const/4 v4, 0x1

    if-eq p2, v1, :cond_2

    invoke-virtual {p3}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result p2

    if-ne p2, v4, :cond_4

    :cond_2
    const/16 p2, 0x2b

    .line 6
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    const v5, 0x7f11034b

    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v3, p2, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/16 p2, 0x2c

    .line 7
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    const v5, 0x7f1101a0

    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v3, p2, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 8
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    const v1, 0x7f110149

    invoke-virtual {p2, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p1, v3, v2, v3, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 9
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    const v1, 0x7f11014f

    invoke-virtual {p2, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p1, v3, v4, v3, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 10
    invoke-virtual {p3}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1

    :cond_3
    :goto_0
    const/16 p2, 0x29

    .line 11
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    const v4, 0x7f110151

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v3, p2, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/16 p2, 0x2f

    .line 12
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    const v4, 0x7f11014e

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v3, p2, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 13
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    const v1, 0x7f110148

    invoke-virtual {p2, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p1, v3, v2, v3, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/16 p2, 0x2e

    .line 14
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    const v2, 0x7f110150

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v3, p2, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 15
    invoke-virtual {p3}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :cond_4
    :goto_1
    return-void
.end method
