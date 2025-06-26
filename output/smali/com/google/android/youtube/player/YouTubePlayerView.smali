.class public final Lcom/google/android/youtube/player/YouTubePlayerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Loc5$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/player/YouTubePlayerView$a;,
        Lcom/google/android/youtube/player/YouTubePlayerView$b;
    }
.end annotation


# static fields
.field public static final synthetic p:I


# instance fields
.field public final e:Lcom/google/android/youtube/player/YouTubePlayerView$a;

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/google/android/youtube/player/YouTubePlayerView$b;

.field public h:Ltc5;

.field public i:Ldd5;

.field public j:Landroid/view/View;

.field public k:Lcom/google/android/youtube/player/internal/n;

.field public l:Loc5$e;

.field public m:Landroid/os/Bundle;

.field public n:Loc5$b;

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/player/YouTubePlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/player/YouTubePlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/youtube/player/YouTubeBaseActivity;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/youtube/player/YouTubeBaseActivity;

    .line 1
    iget-object v0, v0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->e:Lcom/google/android/youtube/player/YouTubeBaseActivity$a;

    const-string v1, "context cannot be null"

    .line 2
    invoke-static {p1, v1}, Lc50;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "listener cannot be null"

    invoke-static {v0, p2}, Lc50;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->g:Lcom/google/android/youtube/player/YouTubePlayerView$b;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_0

    const/high16 p2, -0x1000000

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/youtube/player/YouTubePlayerView;->setClipToPadding(Z)V

    new-instance p3, Lcom/google/android/youtube/player/internal/n;

    invoke-direct {p3, p1}, Lcom/google/android/youtube/player/internal/n;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->k:Lcom/google/android/youtube/player/internal/n;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->requestTransparentRegion(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->k:Lcom/google/android/youtube/player/internal/n;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->b(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->f:Ljava/util/Set;

    new-instance p1, Lcom/google/android/youtube/player/YouTubePlayerView$a;

    invoke-direct {p1, p0, p2}, Lcom/google/android/youtube/player/YouTubePlayerView$a;-><init>(Lcom/google/android/youtube/player/YouTubePlayerView;B)V

    iput-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/YouTubePlayerView$a;

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "A YouTubePlayerView can only be created with an Activity  which extends YouTubeBaseActivity as its context."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static d(Lcom/google/android/youtube/player/YouTubePlayerView;Landroid/app/Activity;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lrc5;->a:Lrc5;

    .line 2
    iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->h:Ltc5;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lrc5;->b(Landroid/app/Activity;Ltc5;Z)Lvc5;

    move-result-object p1
    :try_end_0
    .catch Lhd5$a; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v0, Ldd5;

    iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->h:Ltc5;

    invoke-direct {v0, v1, p1}, Ldd5;-><init>(Ltc5;Lvc5;)V

    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    .line 3
    :try_start_1
    iget-object p1, v0, Ldd5;->b:Lvc5;

    invoke-interface {p1}, Lvc5;->n1()Lfd5;

    move-result-object p1

    invoke-static {p1}, Lgd5;->Z(Lfd5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4
    iput-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->j:Landroid/view/View;

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->b(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->k:Lcom/google/android/youtube/player/internal/n;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->g:Lcom/google/android/youtube/player/YouTubePlayerView$b;

    invoke-interface {p1, p0}, Lcom/google/android/youtube/player/YouTubePlayerView$b;->a(Lcom/google/android/youtube/player/YouTubePlayerView;)V

    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->n:Loc5$b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->m:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_2
    iget-object v1, v1, Ldd5;->b:Lvc5;

    invoke-interface {v1, p1}, Lvc5;->Y0(Landroid/os/Bundle;)Z

    move-result v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 8
    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->m:Landroid/os/Bundle;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Lad5;

    invoke-direct {p1, p0}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw p1

    .line 10
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->n:Loc5$b;

    iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->l:Loc5$e;

    iget-object v3, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    invoke-interface {p1, v1, v3, v2}, Loc5$b;->a(Loc5$e;Loc5;Z)V

    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->n:Loc5$b;

    :cond_1
    return-void

    :catch_1
    move-exception p0

    .line 11
    new-instance p1, Lad5;

    invoke-direct {p1, p0}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw p1

    :catch_2
    move-exception p1

    const-string v0, "YouTubeAndroidPlayerAPI"

    const-string v1, "Error creating YouTubePlayerView"

    .line 12
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    sget-object p1, Lnc5;->f:Lnc5;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->c(Lnc5;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, v0, Ldd5;->b:Lvc5;

    invoke-interface {v0}, Lvc5;->m()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lad5;

    invoke-direct {v1, v0}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public final addFocusables(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->f:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->f:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, v0, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->f:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->f:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->b(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->b(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final addView(Landroid/view/View;II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->b(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->b(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->b(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->k:Lcom/google/android/youtube/player/internal/n;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->j:Landroid/view/View;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No views can be added on top of the player"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lnc5;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->k:Lcom/google/android/youtube/player/internal/n;

    .line 1
    iget-object v2, v1, Lcom/google/android/youtube/player/internal/n;->e:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v1, Lcom/google/android/youtube/player/internal/n;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->n:Loc5$b;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->l:Loc5$e;

    invoke-interface {v1, v2, p1}, Loc5$b;->b(Loc5$e;Lnc5;)V

    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->n:Loc5$b;

    :cond_0
    return-void
.end method

.method public final clearChildFocus(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, v0, Ldd5;->b:Lvc5;

    invoke-interface {v0, v3, p1}, Lvc5;->k2(ILandroid/view/KeyEvent;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lad5;

    invoke-direct {v0, p1}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw v0

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    iget-object v0, v0, Ldd5;->b:Lvc5;

    invoke-interface {v0, v3, p1}, Lvc5;->f5(ILandroid/view/KeyEvent;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_4

    .line 6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2

    :catch_1
    move-exception p1

    .line 7
    new-instance v0, Lad5;

    invoke-direct {v0, p1}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw v0

    .line 8
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, v0, Ldd5;->b:Lvc5;

    invoke-interface {v0}, Lvc5;->c4()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lad5;

    invoke-direct {v1, v0}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public final focusableViewAvailable(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/YouTubePlayerView$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, v0, Ldd5;->b:Lvc5;

    invoke-interface {v0, p1}, Lvc5;->t1(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lad5;

    invoke-direct {v0, p1}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/YouTubePlayerView$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {v0, p1, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->f:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setClipToPadding(Z)V
    .locals 0

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    return-void
.end method
