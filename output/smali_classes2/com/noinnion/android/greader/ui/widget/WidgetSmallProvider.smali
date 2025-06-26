.class public Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# static fields
.field public static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation
.end field

.field public static b:Luv6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->b:Luv6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;IZ)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v0

    invoke-virtual {v0, p1}, Luv6;->j(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->c(Landroid/content/Context;IZ)Landroid/widget/RemoteViews;

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
    sget-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->b:Luv6;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Luv6;

    invoke-direct {v0, p0}, Luv6;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->b:Luv6;

    .line 3
    :cond_0
    sget-object p0, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->b:Luv6;

    return-object p0
.end method

.method public static c(Landroid/content/Context;IZ)Landroid/widget/RemoteViews;
    .locals 28

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 1
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "appWidgetMinHeight"

    .line 3
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x78

    if-ge v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4
    :goto_0
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_1

    const v7, 0x7f0c011c

    goto :goto_1

    :cond_1
    const v7, 0x7f0c011d

    :goto_1
    invoke-direct {v6, v0, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 5
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v0

    invoke-virtual {v0, v2}, Luv6;->d(I)I

    move-result v0

    .line 6
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v7

    invoke-virtual {v7, v2}, Luv6;->c(I)I

    move-result v7

    .line 7
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v8

    invoke-virtual {v8, v2}, Luv6;->k(I)I

    move-result v8

    const v9, 0x7f090361

    .line 8
    invoke-static {v7, v0}, Ln56;->B0(II)I

    move-result v0

    const-string v7, "setBackgroundColor"

    invoke-virtual {v6, v9, v7, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v7, 0x7f0900a3

    const-string v0, "setTextColor"

    .line 9
    invoke-virtual {v6, v7, v0, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v9, 0x7f09031c

    .line 10
    invoke-virtual {v6, v9, v0, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v10, 0x7f090244

    .line 11
    invoke-virtual {v6, v10, v0, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v0, 0x7f090143

    const-string v11, "setColorFilter"

    .line 12
    invoke-virtual {v6, v0, v11, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v12, 0x7f0902a4

    .line 13
    invoke-virtual {v6, v12, v11, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v13, 0x7f090266

    .line 14
    invoke-virtual {v6, v13, v11, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v14, 0x7f09020f

    .line 15
    invoke-virtual {v6, v14, v11, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v15, 0x7f09024f

    .line 16
    invoke-virtual {v6, v15, v11, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 17
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v0

    invoke-virtual {v0, v2}, Luv6;->j(I)Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v0

    invoke-virtual {v0, v2}, Luv6;->m(I)Z

    move-result v11

    const/16 v16, 0x0

    .line 19
    :try_start_0
    sget-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v12, :cond_2

    .line 20
    :try_start_1
    array-length v0, v12

    if-eqz v0, :cond_2

    if-eqz p2, :cond_3

    .line 21
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v0

    invoke-virtual {v0, v2}, Luv6;->f(I)I

    move-result v0

    invoke-static {v1, v8, v0, v11}, Lep6;->t(Landroid/content/Context;Ljava/lang/String;IZ)[J

    move-result-object v12

    .line 22
    sget-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v12, v16

    .line 23
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    const-string v0, "feed/"

    .line 24
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v8

    goto :goto_4

    :cond_4
    move-object/from16 v0, v16

    :goto_4
    if-eqz v8, :cond_5

    const-string v13, "user/"

    .line 25
    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v13, v8

    goto :goto_5

    :cond_5
    move-object/from16 v13, v16

    .line 26
    :goto_5
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v10

    invoke-virtual {v10, v2}, Luv6;->h(I)I

    move-result v10

    .line 27
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v15

    invoke-virtual {v15, v2}, Luv6;->l(I)Ljava/lang/String;

    move-result-object v15

    .line 28
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v14

    invoke-virtual {v14, v1, v2}, Luv6;->b(Landroid/content/Context;I)Z

    move-result v14

    .line 29
    invoke-static/range {p0 .. p0}, Liw6;->a0(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v1, v5}, Llw6;->n(Landroid/content/Context;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 30
    const-class v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    goto :goto_6

    .line 31
    :cond_6
    const-class v5, Lcom/noinnion/android/greader/ui/home/HomeActivity;

    :goto_6
    const-string v18, "greader://widget/id/"

    .line 32
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const v9, 0x7f090154

    const/16 v7, 0x8

    .line 33
    invoke-virtual {v6, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-nez v12, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    .line 34
    :cond_7
    array-length v9, v12

    :goto_7
    const-string v7, "startup_sync"

    move-object/from16 v20, v8

    const-string v8, "tagUid"

    move/from16 v21, v11

    const-string v11, "force_recreate"

    move/from16 v22, v14

    const-string v14, "subUid"

    move/from16 v23, v3

    const-string v3, "appWidgetId"

    move-object/from16 v24, v3

    if-nez v9, :cond_a

    const v3, 0x7f0900a3

    .line 35
    invoke-virtual {v6, v3, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f11036e

    .line 36
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v9, 0x7f09031c

    invoke-virtual {v6, v9, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 37
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz v0, :cond_8

    .line 39
    invoke-virtual {v3, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    if-eqz v13, :cond_9

    .line 40
    invoke-virtual {v3, v8, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    const/4 v9, 0x1

    .line 41
    invoke-virtual {v3, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v9, 0x8000000

    .line 43
    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v10, 0x0

    .line 44
    invoke-static {v1, v10, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v9, 0x7f090191

    .line 45
    invoke-virtual {v6, v9, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v3, 0x4

    const v9, 0x7f09020f

    .line 46
    invoke-virtual {v6, v9, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v9, 0x7f09024f

    .line 47
    invoke-virtual {v6, v9, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/16 v3, 0x8

    const v9, 0x7f090244

    .line 48
    invoke-virtual {v6, v9, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v9, 0x7f09031c

    .line 49
    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v9, 0x7f090154

    .line 50
    invoke-virtual {v6, v9, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move-object/from16 v16, v5

    move-object/from16 v25, v7

    move-object v10, v11

    move-object v7, v13

    move-object v5, v14

    move-object/from16 v13, v24

    goto/16 :goto_10

    :cond_a
    const/4 v3, 0x4

    add-int/lit8 v3, v10, 0x1

    if-le v3, v9, :cond_b

    add-int/lit8 v10, v9, -0x1

    .line 51
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v3

    invoke-virtual {v3, v2, v10}, Luv6;->n(II)V

    :cond_b
    move-object v3, v11

    .line 52
    aget-wide v11, v12, v10

    move-object/from16 v25, v7

    const/4 v7, 0x0

    invoke-static {v1, v11, v12, v7}, Lap6;->l(Landroid/content/Context;JZ)Lap6;

    move-result-object v11

    if-nez v11, :cond_c

    return-object v16

    .line 53
    :cond_c
    iget-object v7, v11, Lap6;->h:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    const v12, 0x7f09031c

    invoke-virtual {v6, v12, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " / "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v15, v13

    iget-wide v12, v11, Lap6;->q:J

    const-wide/16 v26, 0x3e8

    mul-long v12, v12, v26

    invoke-static {v1, v12, v13}, Ln56;->y0(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v12, 0x7f0900a3

    invoke-virtual {v6, v12, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v13, 0x7f090244

    invoke-virtual {v6, v13, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v7, 0x0

    .line 56
    invoke-virtual {v6, v13, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v23, :cond_d

    const/4 v13, 0x3

    goto :goto_8

    :cond_d
    const/4 v13, 0x5

    :goto_8
    const-string v7, "setMaxLines"

    move-object/from16 v16, v5

    const v5, 0x7f09031c

    .line 57
    invoke-virtual {v6, v5, v7, v13}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 58
    invoke-virtual {v11}, Lap6;->p()Z

    move-result v7

    if-eqz v7, :cond_f

    if-nez v22, :cond_f

    const/4 v7, 0x0

    .line 59
    invoke-virtual {v6, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v23, :cond_e

    const/16 v7, 0x10

    goto :goto_9

    :cond_e
    const/16 v7, 0x12

    :goto_9
    const/4 v13, 0x2

    int-to-float v7, v7

    .line 60
    invoke-virtual {v6, v5, v13, v7}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const v5, 0x7f090154

    const/16 v7, 0x8

    .line 61
    invoke-virtual {v6, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 62
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    new-instance v7, Lov6;

    invoke-direct {v7, v11, v6, v1, v2}, Lov6;-><init>(Lap6;Landroid/widget/RemoteViews;Landroid/content/Context;I)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    :cond_f
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v5

    invoke-virtual {v5, v2}, Luv6;->i(I)I

    move-result v5

    if-lez v5, :cond_11

    .line 65
    new-instance v7, Landroid/content/Intent;

    const-class v13, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;

    invoke-direct {v7, v1, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-le v9, v12, :cond_10

    const-string v13, "com.noinnion.android.greader.reader.action.WIDGET_NEXT"

    .line 67
    invoke-virtual {v7, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a

    :cond_10
    const-string v13, "com.noinnion.android.greader.reader.action.WIDGET_FIRST"

    .line 68
    invoke-virtual {v7, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_a
    move-object/from16 v13, v24

    .line 69
    invoke-virtual {v7, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v17, v3

    move-object/from16 p2, v11

    const/high16 v3, 0x8000000

    const/4 v11, 0x0

    .line 70
    invoke-static {v1, v11, v7, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const-string v3, "alarm"

    .line 71
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    const/4 v11, 0x3

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    mul-int/lit16 v5, v5, 0x3e8

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    int-to-long v14, v5

    add-long v14, v22, v14

    invoke-virtual {v3, v11, v14, v15, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_b

    :cond_11
    move-object/from16 v17, v3

    move-object/from16 p2, v11

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    move-object/from16 v13, v24

    .line 73
    :goto_b
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;

    invoke-direct {v3, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    add-int/lit8 v5, v10, -0x1

    if-ltz v5, :cond_12

    const-string v5, "com.noinnion.android.greader.reader.action.WIDGET_PREV"

    .line 75
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_c

    :cond_12
    const-string v5, "com.noinnion.android.greader.reader.action.WIDGET_LAST"

    .line 76
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    :goto_c
    invoke-virtual {v3, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v5, 0x8000000

    const/4 v7, 0x0

    .line 78
    invoke-static {v1, v7, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v5, 0x7f09024f

    .line 79
    invoke-virtual {v6, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v3, 0x1

    if-le v9, v3, :cond_13

    const/4 v3, 0x0

    goto :goto_d

    :cond_13
    const/4 v3, 0x4

    .line 80
    :goto_d
    invoke-virtual {v6, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 81
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;

    invoke-direct {v3, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-ge v12, v9, :cond_14

    const-string v5, "com.noinnion.android.greader.reader.action.WIDGET_NEXT"

    .line 83
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_e

    :cond_14
    const-string v5, "com.noinnion.android.greader.reader.action.WIDGET_FIRST"

    .line 84
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    :goto_e
    invoke-virtual {v3, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v5, 0x8000000

    const/4 v7, 0x0

    .line 86
    invoke-static {v1, v7, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v5, 0x7f09020f

    .line 87
    invoke-virtual {v6, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v3, 0x1

    if-le v9, v3, :cond_15

    const/4 v3, 0x0

    goto :goto_f

    :cond_15
    const/4 v3, 0x4

    .line 88
    :goto_f
    invoke-virtual {v6, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 89
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    invoke-direct {v3, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v5, v18

    if-eqz v0, :cond_16

    .line 91
    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_16
    move-object/from16 v7, v19

    if-eqz v19, :cond_17

    .line 92
    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_17
    move-object/from16 v9, p2

    .line 93
    iget-wide v11, v9, Lap6;->e:J

    const-string v9, "itemId"

    invoke-virtual {v3, v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v9, "cursorPosition"

    .line 94
    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "unreadOnly"

    move/from16 v11, v21

    .line 95
    invoke-virtual {v3, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    div-int/lit8 v10, v10, 0x32

    const/4 v9, 0x1

    add-int/2addr v10, v9

    const-string v11, "page"

    .line 97
    invoke-virtual {v3, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v10, v17

    .line 98
    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v9, 0x8000000

    .line 99
    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v11, 0x0

    .line 100
    invoke-static {v1, v11, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v9, 0x7f090191

    .line 101
    invoke-virtual {v6, v9, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 102
    :goto_10
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v9, v16

    invoke-direct {v3, v1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz v0, :cond_18

    .line 104
    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_18
    if-eqz v7, :cond_19

    .line 105
    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_19
    const/4 v5, 0x1

    .line 106
    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, v25

    .line 107
    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x8000000

    .line 108
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v5, 0x0

    .line 109
    invoke-static {v1, v5, v3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v7, 0x7f0900a3

    .line 110
    invoke-virtual {v6, v7, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 111
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;

    invoke-direct {v3, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v7, "com.noinnion.android.greader.reader.action.WIDGET_SYNC"

    .line 113
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {v3, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    invoke-static {v1, v5, v3, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v5, 0x7f090266

    .line 116
    invoke-virtual {v6, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/noinnion/android/greader/ui/widget/WidgetSmallConfigureActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 119
    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x2

    const-string v3, "app_widget_type"

    .line 120
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "app_widget_tag"

    move-object/from16 v3, v20

    .line 121
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    .line 122
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v3, 0x0

    .line 123
    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0902a4

    .line 124
    invoke-virtual {v6, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v6
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 2
    sget-object p2, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->remove(I)V

    const/4 p2, 0x0

    .line 3
    invoke-static {p1, p3, p2}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->a(Landroid/content/Context;IZ)V

    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->b(Landroid/content/Context;)Luv6;

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
    .locals 9

    const-string v0, "com.noinnion.android.greader.reader.action.WIDGET_SYNC"

    const-string v1, "com.noinnion.android.greader.reader.action.WIDGET_UPDATE"

    :try_start_0
    const-string v2, "appWidgetId"

    const/4 v3, 0x0

    .line 1
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/noinnion/android/greader/ui/widget/WidgetService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "app_widget_type"

    const/4 v2, 0x2

    .line 5
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    sget-object v0, Lu7;->a:Ljava/lang/Object;

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 10
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 11
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "com.noinnion.android.greader.reader.action.WIDGET_FIRST"

    const-string v6, "com.noinnion.android.greader.reader.action.WIDGET_LAST"

    const-string v7, "com.noinnion.android.greader.reader.action.WIDGET_PREV"

    const-string v8, "com.noinnion.android.greader.reader.action.WIDGET_NEXT"

    if-nez v1, :cond_3

    .line 12
    :try_start_1
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 14
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    return-void

    .line 17
    :cond_4
    invoke-static {p1}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object p2

    .line 18
    invoke-virtual {p2, v2}, Luv6;->h(I)I

    move-result v1

    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p2, v2}, Luv6;->j(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lyo6;->g(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_5
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v1, v1, 0x1

    .line 22
    invoke-virtual {p2, v2, v1}, Luv6;->n(II)V

    .line 23
    invoke-static {p1, v2, v3}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->a(Landroid/content/Context;IZ)V

    goto :goto_1

    .line 24
    :cond_6
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v1, v1, -0x1

    .line 25
    invoke-virtual {p2, v2, v1}, Luv6;->n(II)V

    .line 26
    invoke-static {p1, v2, v3}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->a(Landroid/content/Context;IZ)V

    goto :goto_1

    .line 27
    :cond_7
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    sget-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-nez v0, :cond_8

    .line 29
    invoke-virtual {p2, v2}, Luv6;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2}, Luv6;->f(I)I

    move-result v1

    invoke-virtual {p2, v2}, Luv6;->m(I)Z

    move-result v4

    invoke-static {p1, v0, v1, v4}, Lep6;->t(Landroid/content/Context;Ljava/lang/String;IZ)[J

    move-result-object v0

    .line 30
    sget-object v1, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    :cond_8
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 32
    invoke-virtual {p2, v2, v0}, Luv6;->n(II)V

    .line 33
    invoke-static {p1, v2, v3}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->a(Landroid/content/Context;IZ)V

    goto :goto_1

    .line 34
    :cond_9
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 35
    invoke-virtual {p2, v2, v3}, Luv6;->n(II)V

    .line 36
    invoke-static {p1, v2, v3}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->a(Landroid/content/Context;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4

    .line 1
    array-length p2, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget v2, p3, v1

    .line 2
    sget-object v3, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    invoke-static {p1, v2, v0}, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->a(Landroid/content/Context;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
