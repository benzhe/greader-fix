.class public Lcom/noinnion/android/greader/ui/widget/WidgetIconProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# static fields
.field public static a:Luv6;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Luv6;
    .locals 1

    .line 1
    sget-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetIconProvider;->a:Luv6;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Luv6;

    invoke-direct {v0, p0}, Luv6;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetIconProvider;->a:Luv6;

    .line 3
    :cond_0
    sget-object p0, Lcom/noinnion/android/greader/ui/widget/WidgetIconProvider;->a:Luv6;

    return-object p0
.end method

.method public static b(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 8

    .line 1
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0114

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v1, "greader://widget/id/"

    .line 2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3
    invoke-static {p0}, Lcom/noinnion/android/greader/ui/widget/WidgetIconProvider;->a(Landroid/content/Context;)Luv6;

    move-result-object v2

    invoke-virtual {v2, p1}, Luv6;->j(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-static {p0}, Liw6;->a0(Landroid/content/Context;)Z

    move-result v4

    invoke-static {p0, v4}, Llw6;->n(Landroid/content/Context;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    const-class v4, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    goto :goto_0

    .line 7
    :cond_1
    const-class v4, Lcom/noinnion/android/greader/ui/home/HomeActivity;

    .line 8
    :goto_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "user/"

    .line 9
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, "feed/"

    .line 10
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    invoke-static {p0, v2, v3}, Lip6;->d(Landroid/content/Context;Ljava/lang/String;Z)Lip6;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 12
    iget v4, v2, Lip6;->m:I

    .line 13
    iget-wide v6, v2, Lip6;->e:J

    const-string v2, "subId"

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_3

    :cond_3
    const-string v4, "all"

    .line 14
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    invoke-static {p0}, Liw6;->K(Landroid/content/Context;)I

    move-result v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 16
    :cond_5
    :goto_1
    invoke-static {p0, v2, v3}, Llp6;->b(Landroid/content/Context;Ljava/lang/String;Z)Llp6;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 17
    iget v4, v4, Llp6;->j:I

    const-string v6, "tagUid"

    .line 18
    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 19
    :cond_6
    :goto_2
    invoke-static {p0}, Liw6;->K(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x0

    :goto_3
    const v2, 0x7f090367

    if-lez v4, :cond_7

    .line 20
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4

    :cond_7
    const/16 v4, 0x8

    .line 22
    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 23
    :goto_4
    invoke-static {p0}, Lcom/noinnion/android/greader/ui/widget/WidgetIconProvider;->a(Landroid/content/Context;)Luv6;

    move-result-object v2

    invoke-virtual {v2, p1}, Luv6;->l(I)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const v2, 0x7f090365

    .line 25
    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_8
    if-nez v5, :cond_9

    .line 26
    new-instance v5, Landroid/content/Intent;

    const-class p1, Lcom/noinnion/android/greader/ui/login/LoginActivity;

    invoke-direct {v5, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "android.intent.action.MAIN"

    .line 27
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    const-string p1, "force_recreate"

    const/4 v2, 0x1

    .line 28
    invoke-virtual {v5, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "startup_sync"

    .line 29
    invoke-virtual {v5, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x8000000

    .line 31
    invoke-static {p0, v3, v5, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const p1, 0x7f090361

    .line 32
    invoke-virtual {v0, p1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/noinnion/android/greader/ui/widget/WidgetIconProvider;->a(Landroid/content/Context;)Luv6;

    move-result-object v0

    .line 2
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p2, v2

    .line 3
    invoke-virtual {v0, v3}, Luv6;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "com.noinnion.android.greader.reader.action.WIDGET_UPDATE"

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/noinnion/android/greader/ui/widget/WidgetService;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "app_widget_type"

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    sget-object v0, Lu7;->a:Ljava/lang/Object;

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 10
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4

    .line 1
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget v1, p3, v0

    .line 2
    invoke-static {p1, v1}, Lcom/noinnion/android/greader/ui/widget/WidgetIconProvider;->b(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 3
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
