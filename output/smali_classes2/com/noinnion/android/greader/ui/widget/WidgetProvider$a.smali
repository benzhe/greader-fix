.class public Lcom/noinnion/android/greader/ui/widget/WidgetProvider$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/widget/WidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/widget/WidgetProvider;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    sget-object p1, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->i:Landroid/content/Context;

    .line 3
    sget-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;->a:Luv6;

    .line 4
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/noinnion/android/greader/ui/widget/WidgetLargeProvider;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 8
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 9
    :cond_0
    new-array p1, v2, [I

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 11
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget v7, v4, v6

    add-int/lit8 v8, v3, 0x1

    .line 12
    aput v7, p1, v3

    add-int/lit8 v6, v6, 0x1

    move v3, v8

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v0, v2, :cond_3

    .line 13
    aget v1, p1, v0

    .line 14
    sget-object v3, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->i:Landroid/content/Context;

    .line 15
    invoke-static {v3, v1}, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->b(Landroid/content/Context;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
