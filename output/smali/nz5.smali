.class public Lnz5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lb96;

.field public final synthetic f:Landroid/app/Activity;

.field public final synthetic g:Llz5;


# direct methods
.method public constructor <init>(Llz5;Lb96;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnz5;->g:Llz5;

    iput-object p2, p0, Lnz5;->e:Lb96;

    iput-object p3, p0, Lnz5;->f:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lnz5;->g:Llz5;

    .line 2
    iget-object p1, p1, Llz5;->o:Luy5;

    if-eqz p1, :cond_3

    const-string p1, "Calling callback for click action"

    .line 3
    invoke-static {p1}, Lc50;->w0(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lnz5;->g:Llz5;

    .line 5
    iget-object p1, p1, Llz5;->o:Luy5;

    .line 6
    iget-object v0, p0, Lnz5;->e:Lb96;

    check-cast p1, Lj36;

    .line 7
    invoke-virtual {p1}, Lj36;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, v0, Lb96;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 9
    sget-object v0, Luy5$a;->g:Luy5$a;

    invoke-virtual {p1, v0}, Lj36;->e(Luy5$a;)Le45;

    goto :goto_0

    :cond_0
    const-string v1, "Attempting to record: message click to metrics logger"

    .line 10
    invoke-static {v1}, Ln56;->t1(Ljava/lang/String;)V

    .line 11
    new-instance v1, Le36;

    invoke-direct {v1, p1, v0}, Le36;-><init>(Lj36;Lb96;)V

    .line 12
    new-instance v0, Lzd7;

    invoke-direct {v0, v1}, Lzd7;-><init>(Lqc7;)V

    .line 13
    sget-boolean v1, Lj36;->j:Z

    if-nez v1, :cond_1

    .line 14
    invoke-virtual {p1}, Lj36;->a()Le45;

    .line 15
    :cond_1
    invoke-virtual {v0}, Lhb7;->k()Lrb7;

    move-result-object v0

    iget-object p1, p1, Lj36;->c:Lm66;

    .line 16
    iget-object p1, p1, Lm66;->a:Lzb7;

    .line 17
    invoke-static {v0, p1}, Lj36;->d(Lrb7;Lzb7;)Le45;

    goto :goto_0

    :cond_2
    const-string v0, "message click to metrics logger"

    .line 18
    invoke-virtual {p1, v0}, Lj36;->b(Ljava/lang/String;)V

    .line 19
    :cond_3
    :goto_0
    iget-object p1, p0, Lnz5;->g:Llz5;

    iget-object v0, p0, Lnz5;->f:Landroid/app/Activity;

    iget-object v1, p0, Lnz5;->e:Lb96;

    .line 20
    iget-object v1, v1, Lb96;->a:Ljava/lang/String;

    .line 21
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 22
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.chrome"

    .line 24
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    const/high16 v4, 0x10000000

    const/high16 v5, 0x40000000    # 2.0f

    const-string v6, "android.intent.action.VIEW"

    const/4 v7, 0x0

    if-eqz p1, :cond_5

    .line 27
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.support.customtabs.extra.SESSION"

    .line 28
    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 29
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 30
    invoke-virtual {v8, v6, v7}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 31
    invoke-virtual {p1, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_4
    const-string v6, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    .line 32
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 34
    invoke-virtual {p1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "androidx.browser.customtabs.extra.SHARE_STATE"

    .line 35
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 39
    sget-object v1, Lu7;->a:Ljava/lang/Object;

    .line 40
    invoke-virtual {v0, p1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    .line 41
    :cond_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 42
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 43
    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v1, :cond_6

    .line 45
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    const-string p1, "FIAM.Display"

    const-string v0, "Device cannot resolve intent for: android.intent.action.VIEW"

    .line 46
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_1
    iget-object p1, p0, Lnz5;->g:Llz5;

    .line 48
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object p1, p0, Lnz5;->g:Llz5;

    iget-object v0, p0, Lnz5;->f:Landroid/app/Activity;

    .line 50
    invoke-virtual {p1, v0}, Llz5;->d(Landroid/app/Activity;)V

    .line 51
    iget-object p1, p0, Lnz5;->g:Llz5;

    .line 52
    iput-object v7, p1, Llz5;->n:Lj96;

    .line 53
    iput-object v7, p1, Llz5;->o:Luy5;

    return-void
.end method
