.class public final Lcom/noinnion/android/greader/ui/item/ItemFragment$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/item/ItemFragment$d;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/item/ItemFragment$d;

.field public final synthetic b:Landroid/webkit/WebView$HitTestResult;

.field public final synthetic c:Lcom/noinnion/android/reader/ui/widget/ItemWebView;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/ItemFragment$d;Landroid/webkit/WebView$HitTestResult;Lcom/noinnion/android/reader/ui/widget/ItemWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d$a;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment$d;

    iput-object p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d$a;->b:Landroid/webkit/WebView$HitTestResult;

    iput-object p3, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d$a;->c:Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d$a;->b:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    .line 2
    invoke-static {p1, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/16 v2, 0x29

    if-eq p1, v2, :cond_5

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    if-eqz v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d$a;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment$d;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment$d;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 4
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz p1, :cond_0

    .line 5
    iget-wide v3, p1, Lap6;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->I0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v3, 0x2

    const-string v4, "file:"

    .line 6
    invoke-static {v0, v4, v2, v3}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ".png"

    .line 7
    invoke-static {p1, v2}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d$a;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment$d;

    iget-object v2, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment$d;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "image/png"

    invoke-static {v2, v0, p1, v3}, Ln56;->r0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1

    .line 9
    :pswitch_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d$a;->c:Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string v2, "webView.settings"

    invoke-static {p1, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 10
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d$a;->c:Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    const-string v2, "javascript:function findImageTitle(src){for(x=0;x<document.images.length;x++){if (document.images[x].src == src) {window.backdoor.showCaption(src, document.images[x].title);break;}}}findImageTitle(\"%src%\");"

    const-string v3, "%src%"

    .line 11
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1

    .line 13
    :pswitch_2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d$a;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment$d;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment$d;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v2, "gReader"

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    :try_start_0
    const-string v3, "clipboard"

    .line 14
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    .line 15
    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 16
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_2
    return v1

    .line 17
    :pswitch_3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d$a;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment$d;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment$d;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d$a;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment$d;

    iget-object v2, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment$d;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Liw6;->Q(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p1, v0, v2}, Ljw6;->b(Landroid/app/Activity;Ljava/lang/String;Z)V

    return v1

    :pswitch_4
    if-eqz v0, :cond_4

    .line 18
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d$a;->c:Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_4
    return v1

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d$a;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment$d;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment$d;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 21
    :cond_6
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    .line 22
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "image/*"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    return v1

    .line 26
    :cond_8
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$d$a;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment$d;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment$d;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0, v0}, Ln56;->P1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
