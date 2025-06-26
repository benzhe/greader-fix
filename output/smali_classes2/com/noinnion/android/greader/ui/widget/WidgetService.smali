.class public Lcom/noinnion/android/greader/ui/widget/WidgetService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Z

.field public static final g:Ljava/lang/Object;

.field public static h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetService;->e:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/noinnion/android/greader/ui/widget/WidgetService;->f:Z

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/noinnion/android/greader/ui/widget/WidgetService;->g:Ljava/lang/Object;

    .line 4
    sput v0, Lcom/noinnion/android/greader/ui/widget/WidgetService;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static b([I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetService;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 3
    sget-object v4, Lcom/noinnion/android/greader/ui/widget/WidgetService;->e:Ljava/util/Queue;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1101fd

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "widget_service"

    const/4 v6, 0x2

    invoke-static {p0, v5, v1, v6}, Lvx6;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v5, Lm7;

    invoke-direct {v5, v0, v1}, Lm7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v5, v2}, Lm7;->e(Ljava/lang/CharSequence;)Lm7;

    .line 7
    iget-object v0, v5, Lm7;->s:Landroid/app/Notification;

    const v1, 0x7f080146

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 8
    iput-wide v3, v0, Landroid/app/Notification;->when:J

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 9
    invoke-virtual {v5, v1, v0}, Lm7;->f(IZ)V

    .line 10
    invoke-virtual {v5}, Lm7;->b()Landroid/app/Notification;

    move-result-object v0

    const v1, 0x7f090225

    .line 11
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "appWidgetId"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p1, v1, v0

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    .line 4
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 5
    :goto_1
    invoke-static {v1}, Lcom/noinnion/android/greader/ui/widget/WidgetService;->b([I)V

    .line 6
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    .line 7
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    const v1, 0x7f090186

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/widget/WidgetService;->a()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/widget/WidgetService;->a()V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    return p2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string v0, "com.noinnion.android.greader.reader.action.WIDGET_UPDATE"

    .line 3
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_5

    const-string p3, "app_widget_type"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    sput p3, Lcom/noinnion/android/greader/ui/widget/WidgetService;->h:I

    if-eq p3, v0, :cond_4

    if-eq p3, p2, :cond_3

    const/4 v1, 0x3

    if-eq p3, v1, :cond_2

    const/4 v1, 0x4

    if-eq p3, v1, :cond_1

    .line 5
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p3

    .line 6
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/noinnion/android/greader/ui/widget/WidgetIconProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p3, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p3

    invoke-static {p3}, Lcom/noinnion/android/greader/ui/widget/WidgetService;->b([I)V

    .line 7
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p3

    .line 8
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p3, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p3

    invoke-static {p3}, Lcom/noinnion/android/greader/ui/widget/WidgetService;->b([I)V

    .line 9
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p3

    .line 10
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p3, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p3

    invoke-static {p3}, Lcom/noinnion/android/greader/ui/widget/WidgetService;->b([I)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/widget/WidgetService;->c(Landroid/content/Intent;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/widget/WidgetService;->c(Landroid/content/Intent;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    .line 14
    new-instance p3, Landroid/content/ComponentName;

    const-class v1, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;

    invoke-direct {p3, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1

    invoke-static {p1}, Lcom/noinnion/android/greader/ui/widget/WidgetService;->b([I)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    .line 16
    new-instance p3, Landroid/content/ComponentName;

    const-class v1, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;

    invoke-direct {p3, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1

    invoke-static {p1}, Lcom/noinnion/android/greader/ui/widget/WidgetService;->b([I)V

    goto :goto_0

    .line 17
    :cond_4
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    .line 18
    new-instance p3, Landroid/content/ComponentName;

    const-class v1, Lcom/noinnion/android/greader/ui/widget/WidgetIconProvider;

    invoke-direct {p3, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1

    invoke-static {p1}, Lcom/noinnion/android/greader/ui/widget/WidgetService;->b([I)V

    .line 19
    :cond_5
    :goto_0
    sget-object p1, Lcom/noinnion/android/greader/ui/widget/WidgetService;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 20
    :try_start_0
    sget-boolean p3, Lcom/noinnion/android/greader/ui/widget/WidgetService;->f:Z

    if-nez p3, :cond_6

    .line 21
    sput-boolean v0, Lcom/noinnion/android/greader/ui/widget/WidgetService;->f:Z

    .line 22
    new-instance p3, Ljava/lang/Thread;

    invoke-direct {p3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 23
    :cond_6
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public run()V
    .locals 8

    .line 1
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 2
    new-instance v1, Luv6;

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Luv6;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 3
    :cond_0
    :goto_0
    sget-object v3, Lcom/noinnion/android/greader/ui/widget/WidgetService;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 4
    :try_start_0
    sget-object v4, Lcom/noinnion/android/greader/ui/widget/WidgetService;->e:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    const/4 v7, 0x0

    if-nez v5, :cond_1

    .line 5
    sput-boolean v7, Lcom/noinnion/android/greader/ui/widget/WidgetService;->f:Z

    .line 6
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_7

    .line 7
    monitor-enter v3

    .line 8
    :try_start_1
    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 9
    monitor-exit v3

    const/4 v4, 0x0

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_1
    iget-object v3, v1, Luv6;->a:Landroid/content/SharedPreferences;

    const-string v5, "widget_type"

    invoke-static {v4, v5}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 12
    sput v3, Lcom/noinnion/android/greader/ui/widget/WidgetService;->h:I

    if-eq v3, v6, :cond_6

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    const/4 v5, 0x4

    if-eq v3, v5, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {p0, v4, v6}, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->d(Landroid/content/Context;IZ)Landroid/widget/RemoteViews;

    move-result-object v2

    goto :goto_2

    .line 14
    :cond_4
    invoke-static {p0, v4, v6}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->c(Landroid/content/Context;IZ)Landroid/widget/RemoteViews;

    move-result-object v2

    goto :goto_2

    .line 15
    :cond_5
    invoke-static {p0, v4, v6}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->c(Landroid/content/Context;IZ)Landroid/widget/RemoteViews;

    move-result-object v2

    goto :goto_2

    .line 16
    :cond_6
    invoke-static {p0, v4}, Lcom/noinnion/android/greader/ui/widget/WidgetIconProvider;->b(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_0

    .line 17
    invoke-virtual {v0, v4, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 18
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 19
    :cond_7
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :catchall_1
    move-exception v0

    .line 20
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
