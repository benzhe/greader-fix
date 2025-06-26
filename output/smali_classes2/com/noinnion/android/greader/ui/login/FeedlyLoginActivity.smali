.class public final Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;
.super Lcom/noinnion/android/reader/ui/BaseDialogActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;-><init>()V

    return-void
.end method

.method public static final B(Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_0

    const p1, 0x7f1101c8

    .line 2
    invoke-static {v0, p1}, Ln56;->W1(Landroid/content/Context;I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn6;->h0(Landroid/content/Context;I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Liw6;->Z(Landroid/content/Context;I)V

    const/4 p1, -0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090092

    if-eq p1, v0, :cond_1

    const v0, 0x7f09035f

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "https://feedly.com"

    .line 2
    invoke-static {p0, p1}, Ljw6;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "https://feedly.com/v3/auth/auth"

    const-string v0, "?scope="

    .line 3
    invoke-static {p1, v0}, Ljo;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "https://cloud.feedly.com/subscriptions"

    invoke-static {v0}, Ln56;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&redirect_uri="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "greader://feedly"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&response_type=code&client_id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "greader"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    invoke-static {p0, p1, v0}, Ljw6;->b(Landroid/app/Activity;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->A(Landroid/os/Bundle;Z)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    const p1, 0x7f0c006d

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f090322

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->s()Lc0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc0;->x(Landroidx/appcompat/widget/Toolbar;)V

    :cond_1
    const p1, 0x7f090092

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09035f

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f1100f1

    .line 8
    invoke-static {p0, p1}, Ln56;->y2(Landroid/app/Activity;I)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f09018e

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<View>(R.id.loading)"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "authCode"

    .line 4
    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lsr6;

    invoke-direct {v0, p0, p1}, Lsr6;-><init>(Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lae7;

    invoke-direct {p1, v0}, Lae7;-><init>(Ljava/util/concurrent/Callable;)V

    const-string v0, "Completable.fromCallable\u2026}\n            }\n        }"

    .line 7
    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lej7;->b:Lzb7;

    .line 9
    invoke-virtual {p1, v0}, Lhb7;->j(Lzb7;)Lhb7;

    move-result-object p1

    .line 10
    invoke-static {}, Lfc7;->a()Lzb7;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhb7;->g(Lzb7;)Lhb7;

    move-result-object p1

    const-string v0, "fetchApiToken(authCode)\n\u2026dSchedulers.mainThread())"

    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity$a;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity$a;-><init>(Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;)V

    .line 12
    new-instance v1, Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity$b;

    invoke-direct {v1, p0}, Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity$b;-><init>(Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;)V

    .line 13
    invoke-static {p1, v1, v0}, Lbj7;->d(Lhb7;Lpl7;Lel7;)Lic7;

    move-result-object p1

    const-string v0, "disposable"

    .line 14
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->x:Lhc7;

    invoke-virtual {v0, p1}, Lhc7;->b(Lic7;)Z

    :cond_0
    return-void
.end method
