.class public final Lcom/noinnion/android/greader/ui/item/ItemFragment$b;
.super Lry6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/item/ItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/noinnion/android/greader/ui/item/ItemFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-direct {p0}, Lry6;-><init>()V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    const-string v0, "collection"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2
    move-object p2, p3

    check-cast p2, Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    instance-of p1, p3, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-nez p1, :cond_0

    const/4 p3, 0x0

    :cond_0
    check-cast p3, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->destroy()V

    :cond_1
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->h:Lap6$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 13

    const-string v0, "collection"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2
    new-instance v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    iget-object v5, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v5, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {v5}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object v5

    iget-boolean v5, v5, Lkw6;->b:Z

    invoke-virtual {v4, v5}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->setDarkMode(Z)V

    .line 4
    iget-object v5, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 5
    iget-object v6, v5, Lcom/noinnion/android/greader/ui/item/ItemFragment;->v:Landroid/widget/ProgressBar;

    .line 6
    iput-object v6, v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->q:Landroid/widget/ProgressBar;

    .line 7
    iget-object v5, v5, Lcom/noinnion/android/greader/ui/item/ItemFragment;->h:Lap6$a;

    if-eqz v5, :cond_0

    .line 8
    invoke-virtual {v5, p2}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    .line 9
    :cond_0
    iget-object v5, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 10
    iget-object v5, v5, Lcom/noinnion/android/greader/ui/item/ItemFragment;->h:Lap6$a;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 11
    invoke-virtual {v5}, Landroid/database/CursorWrapper;->isClosed()Z

    move-result v5

    if-ne v5, v6, :cond_1

    goto/16 :goto_b

    .line 12
    :cond_1
    new-instance v5, Lap6;

    iget-object v7, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 13
    iget-object v7, v7, Lcom/noinnion/android/greader/ui/item/ItemFragment;->h:Lap6$a;

    .line 14
    invoke-direct {v5, v7}, Lap6;-><init>(Landroid/database/Cursor;)V

    .line 15
    iget-wide v7, v5, Lap6;->e:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v7, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 17
    iget-object v8, v7, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v8, :cond_2

    .line 18
    iget-wide v8, v8, Lap6;->e:J

    iget-wide v10, v5, Lap6;->e:J

    cmp-long v12, v8, v10

    if-nez v12, :cond_2

    .line 19
    iput-boolean v6, v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->e:Z

    .line 20
    :cond_2
    iget-object v7, v7, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v7, :cond_20

    .line 21
    iget-boolean v7, v7, Lkw6;->b:Z

    .line 22
    sget v8, Llw6;->a:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v8, v6, :cond_6

    const/high16 v11, -0x1000000

    if-eq v8, v10, :cond_7

    if-eq v8, v9, :cond_4

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    const v11, -0x60607

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_5

    goto :goto_0

    :cond_5
    const v11, -0x3b4045

    goto :goto_0

    :cond_6
    const v11, -0xe0e0e1

    .line 23
    :cond_7
    :goto_0
    invoke-virtual {v4, v11}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 24
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    .line 25
    iget-object v8, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 26
    iget-boolean v11, v8, Lcom/noinnion/android/greader/ui/item/ItemFragment;->D:Z

    if-nez v11, :cond_8

    .line 27
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 28
    iget-object v8, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Ln56;->H0(Landroid/content/Context;)I

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "settings"

    .line 29
    invoke-static {v7, v8}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 30
    iget-boolean v8, v8, Lcom/noinnion/android/greader/ui/item/ItemFragment;->D:Z

    .line 31
    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 32
    iget-object v8, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 33
    iget-boolean v8, v8, Lcom/noinnion/android/greader/ui/item/ItemFragment;->D:Z

    xor-int/2addr v8, v6

    .line 34
    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    :cond_8
    const-string v8, "settings"

    .line 35
    invoke-static {v7, v8}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {v8}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object v8

    iget v8, v8, Lkw6;->e:I

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 36
    iget-object v8, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {v8}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object v8

    iget-boolean v8, v8, Lkw6;->o:Z

    if-eqz v8, :cond_9

    .line 37
    invoke-virtual {v7, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 38
    invoke-virtual {v7, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 39
    :cond_9
    new-instance v8, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;

    iget-object v11, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-direct {v8, v11, v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 40
    new-instance v8, Lcom/noinnion/android/greader/ui/item/ItemFragment$d;

    iget-object v11, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-direct {v8, v11}, Lcom/noinnion/android/greader/ui/item/ItemFragment$d;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V

    invoke-virtual {v4, v8}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 41
    new-instance v8, Lcom/noinnion/android/greader/ui/item/ItemFragment$g;

    iget-object v11, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-direct {v8, v11}, Lcom/noinnion/android/greader/ui/item/ItemFragment$g;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V

    invoke-virtual {v4, v8}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 42
    new-instance v8, Lcom/noinnion/android/greader/ui/item/ItemFragment$f;

    iget-object v11, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-direct {v8, v11}, Lcom/noinnion/android/greader/ui/item/ItemFragment$f;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V

    const-string v11, "backdoor"

    invoke-virtual {v4, v8, v11}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-wide v11, v5, Lap6;->g:J

    .line 44
    sget-object v8, Lon6;->a:Lew6;

    const-class v8, Lon6;

    monitor-enter v8

    .line 45
    :try_start_0
    invoke-static {v0, v11, v12, v6}, Lon6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    if-eqz v0, :cond_f

    .line 46
    iget-boolean v8, v0, Lip6;->t:Z

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 47
    iget v8, v0, Lip6;->w:I

    if-ne v8, v3, :cond_a

    iget-object v8, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {v8}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object v8

    iget v8, v8, Lkw6;->g:I

    :cond_a
    iput v8, v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->k:I

    .line 48
    iget v8, v0, Lip6;->x:I

    if-ne v8, v3, :cond_b

    iget-object v8, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {v8}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object v8

    iget-boolean v8, v8, Lkw6;->i:Z

    goto :goto_1

    :cond_b
    if-ne v8, v6, :cond_c

    const/4 v8, 0x1

    goto :goto_1

    :cond_c
    const/4 v8, 0x0

    :goto_1
    iput-boolean v8, v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->l:Z

    .line 49
    iget v8, v0, Lip6;->x:I

    if-ne v8, v3, :cond_d

    iget-object v8, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {v8}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object v8

    iget v8, v8, Lkw6;->j:I

    :cond_d
    iput v8, v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->m:I

    .line 50
    iget v8, v0, Lip6;->v:I

    if-ne v8, v3, :cond_e

    iget-object v8, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {v8}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object v8

    iget-boolean v8, v8, Lkw6;->k:Z

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    goto :goto_2

    :cond_e
    const/4 v8, 0x0

    :goto_2
    iput-boolean v8, v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->p:Z

    goto :goto_3

    .line 51
    :cond_f
    iget-object v8, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {v8}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object v8

    iget v8, v8, Lkw6;->g:I

    iput v8, v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->k:I

    .line 52
    iget-object v8, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {v8}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object v8

    iget-boolean v8, v8, Lkw6;->i:Z

    iput-boolean v8, v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->l:Z

    .line 53
    iget-object v8, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {v8}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object v8

    iget v8, v8, Lkw6;->j:I

    iput v8, v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->m:I

    .line 54
    iget-object v8, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {v8}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object v8

    iget-boolean v8, v8, Lkw6;->k:Z

    iput-boolean v8, v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->p:Z

    :goto_3
    if-eqz v0, :cond_12

    .line 55
    iget v8, v0, Lip6;->v:I

    if-ne v8, v3, :cond_10

    goto :goto_4

    :cond_10
    if-ne v8, v6, :cond_11

    const/4 v8, 0x1

    goto :goto_5

    :cond_11
    const/4 v8, 0x0

    goto :goto_5

    :cond_12
    :goto_4
    iget-object v8, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {v8}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object v8

    iget-boolean v8, v8, Lkw6;->h:Z

    :goto_5
    if-eqz v0, :cond_14

    .line 56
    iget-boolean v11, v0, Lip6;->s:Z

    if-eqz v11, :cond_13

    goto :goto_6

    :cond_13
    const/4 v11, 0x0

    goto :goto_7

    :cond_14
    :goto_6
    const/4 v11, 0x1

    :goto_7
    iput-boolean v11, v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->n:Z

    if-eqz v0, :cond_15

    .line 57
    iget v0, v0, Lip6;->y:I

    if-ne v0, v3, :cond_16

    :cond_15
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object v0

    iget v0, v0, Lkw6;->l:I

    :cond_16
    if-eq v0, v6, :cond_19

    if-eq v0, v10, :cond_18

    if-eq v0, v9, :cond_17

    move-object v0, v1

    goto :goto_8

    :cond_17
    const-string v0, "Mozilla/5.0(iPad; U; CPU iPhone OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B314 Safari/531.21.10"

    goto :goto_8

    :cond_18
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    goto :goto_8

    :cond_19
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    .line 58
    :goto_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 59
    invoke-virtual {v7, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 60
    :cond_1a
    iget-boolean v0, v5, Lap6;->s:Z

    if-eqz v0, :cond_1b

    .line 61
    iput-boolean v6, v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->o:Z

    .line 62
    iget-boolean v0, v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->p:Z

    if-eqz v0, :cond_1d

    .line 63
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 64
    invoke-virtual {v0, v4, v5}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->r(Landroid/webkit/WebView;Lap6;)Z

    move-result v0

    goto :goto_a

    .line 65
    :cond_1b
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 66
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->p:Lj4;

    .line 67
    iget-wide v11, v5, Lap6;->e:J

    invoke-virtual {v0, v11, v12}, Lj4;->h(J)I

    move-result v0

    if-ltz v0, :cond_1d

    .line 68
    iput-boolean v6, v5, Lap6;->s:Z

    .line 69
    iput-boolean v6, v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->o:Z

    .line 70
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 71
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->p:Lj4;

    .line 72
    iget-wide v6, v5, Lap6;->e:J

    invoke-virtual {v0, v6, v7}, Lj4;->f(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_9

    :cond_1c
    const/4 v0, 0x0

    :goto_9
    iput v0, v5, Lap6;->t:I

    .line 73
    iput v0, v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->h:I

    .line 74
    iget-boolean v0, v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->p:Z

    if-eqz v0, :cond_1d

    .line 75
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 76
    invoke-virtual {v0, v4, v5}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->r(Landroid/webkit/WebView;Lap6;)Z

    move-result v0

    goto :goto_a

    :cond_1d
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_1f

    if-eqz v8, :cond_1e

    .line 77
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    iget-object v5, v5, Lap6;->k:Ljava/lang/String;

    const-string v6, "item.link"

    invoke-static {v5, v6}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v4, v5}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->t(Lcom/noinnion/android/reader/ui/widget/ItemWebView;Ljava/lang/String;)V

    goto :goto_c

    .line 79
    :cond_1e
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->d:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 80
    invoke-virtual {v0, v4, v5}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->v(Landroid/webkit/WebView;Lap6;)V

    goto :goto_c

    .line 81
    :cond_1f
    iput v10, v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->f:I

    .line 82
    iget v0, v5, Lap6;->t:I

    iput v0, v4, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->h:I

    goto :goto_c

    :catchall_0
    move-exception p1

    .line 83
    monitor-exit v8

    throw p1

    :cond_20
    const-string p1, "mReadingOptions"

    .line 84
    invoke-static {p1}, Lim7;->k(Ljava/lang/String;)V

    throw v1

    :cond_21
    :goto_b
    move-object v4, v1

    :goto_c
    if-eqz v4, :cond_22

    .line 85
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-virtual {p1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 87
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v4

    :cond_22
    return-object v1
.end method

.method public d(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "object"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
