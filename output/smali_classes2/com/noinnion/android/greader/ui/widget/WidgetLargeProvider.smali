.class public Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;
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

.method public static a(Landroid/content/Context;IZ)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v0

    invoke-virtual {v0, p1}, Luv6;->j(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->d(Landroid/content/Context;IZ)Landroid/widget/RemoteViews;

    move-result-object p2

    .line 3
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Luv6;
    .locals 1

    .line 1
    sget-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->a:Luv6;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Luv6;

    invoke-direct {v0, p0}, Luv6;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->a:Luv6;

    .line 3
    :cond_0
    sget-object p0, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->a:Luv6;

    return-object p0
.end method

.method public static d(Landroid/content/Context;IZ)Landroid/widget/RemoteViews;
    .locals 13

    const v0, 0x7f090186

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p0, p1}, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->b(Landroid/content/Context;I)V

    .line 2
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    .line 3
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 5
    :cond_0
    new-instance p2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0118

    invoke-direct {p2, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 6
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/noinnion/android/greader/ui/widget/WidgetLargeV11Service;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "appWidgetId"

    .line 7
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p2, p1, v0, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    const v1, 0x7f0900ff

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 11
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.noinnion.android.greader.reader.action.WIDGET_ITEM_CLICK"

    .line 12
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v4, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    invoke-virtual {v4, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    .line 15
    invoke-static {p0, v5, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 16
    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 17
    invoke-static {p0}, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v0

    invoke-virtual {v0, p1}, Luv6;->d(I)I

    move-result v0

    .line 18
    invoke-static {p0}, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v4

    invoke-virtual {v4, p1}, Luv6;->c(I)I

    move-result v4

    .line 19
    invoke-static {p0}, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v7

    invoke-virtual {v7, p1}, Luv6;->k(I)I

    move-result v7

    const v8, 0x7f090361

    .line 20
    invoke-static {v4, v0}, Ln56;->B0(II)I

    move-result v0

    const-string v4, "setBackgroundColor"

    invoke-virtual {p2, v8, v4, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v0, 0x7f090362

    const-string v4, "setTextColor"

    .line 21
    invoke-virtual {p2, v0, v4, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 22
    invoke-virtual {p2, v1, v4, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v1, 0x7f090143

    const-string v4, "setColorFilter"

    .line 23
    invoke-virtual {p2, v1, v4, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v8, 0x7f0902a4

    .line 24
    invoke-virtual {p2, v8, v4, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v9, 0x7f090266

    .line 25
    invoke-virtual {p2, v9, v4, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v4, 0x7f0801a7

    .line 26
    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 27
    invoke-static {p0}, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v1

    invoke-virtual {v1, p1}, Luv6;->l(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v1, "greader://widget/id/"

    .line 29
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 30
    invoke-static {p0}, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v4

    invoke-virtual {v4, p1}, Luv6;->j(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    const-string v10, "feed/"

    .line 31
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v4

    goto :goto_0

    :cond_1
    move-object v10, v7

    :goto_0
    if-eqz v4, :cond_2

    const-string v11, "user/"

    .line 32
    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v7, v4

    .line 33
    :cond_2
    invoke-static {p0}, Liw6;->a0(Landroid/content/Context;)Z

    move-result v11

    invoke-static {p0, v11}, Llw6;->n(Landroid/content/Context;Z)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 34
    const-class v11, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    goto :goto_1

    .line 35
    :cond_3
    const-class v11, Lcom/noinnion/android/greader/ui/home/HomeActivity;

    .line 36
    :goto_1
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    invoke-virtual {v12, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz v10, :cond_4

    const-string v11, "subUid"

    .line 38
    invoke-virtual {v12, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    if-eqz v7, :cond_5

    const-string v10, "tagUid"

    .line 39
    invoke-virtual {v12, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const-string v7, "force_recreate"

    .line 40
    invoke-virtual {v12, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "startup_sync"

    .line 41
    invoke-virtual {v12, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    invoke-static {p0, v5, v12, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 43
    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "com.noinnion.android.greader.reader.action.WIDGET_SYNC"

    .line 46
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    invoke-static {p0, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 49
    invoke-virtual {p2, v9, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/noinnion/android/greader/ui/widget/WidgetLargeConfigureActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 52
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x4

    const-string v1, "app_widget_type"

    .line 53
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "app_widget_tag"

    .line 54
    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    invoke-static {p0, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 57
    invoke-virtual {p2, v8, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object p2
.end method


# virtual methods
.method public final c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "cursorPosition"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "appWidgetId"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "greader://widget/id/"

    .line 3
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 4
    invoke-static {p1}, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v4

    invoke-virtual {v4, v1}, Luv6;->j(I)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {p1}, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v5

    invoke-virtual {v5, v1}, Luv6;->m(I)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const-string v6, "feed/"

    .line 6
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v4

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    if-eqz v4, :cond_2

    const-string v7, "user/"

    .line 7
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v5

    .line 8
    :goto_1
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    invoke-direct {v5, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz v6, :cond_3

    const-string v3, "subUid"

    .line 10
    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    if-eqz v4, :cond_4

    const-string v3, "tagUid"

    .line 11
    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string v3, "itemId"

    const-wide/16 v6, 0x0

    .line 12
    invoke-virtual {p2, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long p2, v8, v6

    if-lez p2, :cond_5

    .line 13
    invoke-virtual {v5, v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 14
    :cond_5
    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    div-int/lit8 v2, v2, 0x32

    const/4 p2, 0x1

    add-int/2addr v2, p2

    const-string v0, "page"

    .line 16
    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "unreadOnly"

    .line 17
    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "force_recreate"

    .line 18
    invoke-virtual {v5, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 19
    invoke-virtual {v5, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x8000000

    .line 20
    invoke-virtual {v5, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->b(Landroid/content/Context;)Luv6;

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
    .locals 10

    const-string v0, "appWidgetId"

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x1a

    const/4 v6, 0x4

    const-string v7, "app_widget_type"

    const-string v8, "com.noinnion.android.greader.reader.action.WIDGET_UPDATE"

    if-eqz v4, :cond_1

    .line 4
    :try_start_1
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 5
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/noinnion/android/greader/ui/widget/WidgetService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    sget-object v0, Lu7;->a:Ljava/lang/Object;

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_0

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_1
    if-eqz v4, :cond_3

    const-string v9, "com.noinnion.android.greader.reader.action.WIDGET_LARGE_UPDATE"

    .line 12
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 13
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/noinnion/android/greader/ui/widget/WidgetService;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    invoke-virtual {p2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    sget-object v0, Lu7;->a:Ljava/lang/Object;

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_2

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    const-string v5, "com.noinnion.android.greader.reader.action.WIDGET_SYNC"

    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 22
    invoke-virtual {v1, v3}, Luv6;->j(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lyo6;->g(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "android.appwidget.action.APPWIDGET_DELETED"

    .line 23
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p2, v0, v2

    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->onDeleted(Landroid/content/Context;[I)V

    goto :goto_0

    :cond_5
    const-string v0, "com.noinnion.android.greader.reader.action.WIDGET_ITEM_CLICK"

    .line 26
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->c(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 28
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    .line 1
    array-length p2, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget v2, p3, v1

    .line 2
    invoke-static {p1, v2, v0}, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->a(Landroid/content/Context;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
