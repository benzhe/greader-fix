.class public Lcom/noinnion/android/greader/ui/widget/WidgetLargeConfigureActivity;
.super Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public C(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Luv6;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Luv6;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, p1, v1}, Luv6;->q(II)V

    if-nez p2, :cond_0

    const p2, 0x7f110154

    .line 3
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p2, "all"

    .line 4
    :cond_0
    invoke-virtual {v0, p1, p2}, Luv6;->o(ILjava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1, p3}, Luv6;->p(ILjava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->a(Landroid/content/Context;IZ)V

    .line 7
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "greader://widget/id/"

    .line 8
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 9
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p3, "appWidgetId"

    .line 10
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    iput v0, p0, Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;->y:I

    .line 2
    invoke-super {p0, p1}, Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f11036a

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method
