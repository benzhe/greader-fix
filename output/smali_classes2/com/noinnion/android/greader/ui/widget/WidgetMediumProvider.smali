.class public Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;
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

    sput-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b:Luv6;

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
    invoke-static {p0}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v0

    invoke-virtual {v0, p1}, Luv6;->j(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->c(Landroid/content/Context;IZ)Landroid/widget/RemoteViews;

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
    sget-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b:Luv6;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Luv6;

    invoke-direct {v0, p0}, Luv6;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b:Luv6;

    .line 3
    :cond_0
    sget-object p0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b:Luv6;

    return-object p0
.end method

.method public static c(Landroid/content/Context;IZ)Landroid/widget/RemoteViews;
    .locals 29

    move-object/from16 v7, p0

    move/from16 v8, p1

    .line 1
    new-instance v9, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c011b

    invoke-direct {v9, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v0

    invoke-virtual {v0, v8}, Luv6;->d(I)I

    move-result v0

    .line 3
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v1

    invoke-virtual {v1, v8}, Luv6;->c(I)I

    move-result v1

    .line 4
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v2

    invoke-virtual {v2, v8}, Luv6;->k(I)I

    move-result v2

    const v3, 0x7f090361

    .line 5
    invoke-static {v1, v0}, Ln56;->B0(II)I

    move-result v0

    const-string v1, "setBackgroundColor"

    invoke-virtual {v9, v3, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v10, 0x7f0900a3

    const-string v0, "setTextColor"

    .line 6
    invoke-virtual {v9, v10, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v1, 0x7f09031c

    .line 7
    invoke-virtual {v9, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v3, 0x7f09031e

    .line 8
    invoke-virtual {v9, v3, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v4, 0x7f0902e1

    .line 9
    invoke-virtual {v9, v4, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v0, 0x7f090143

    const-string v5, "setColorFilter"

    .line 10
    invoke-virtual {v9, v0, v5, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v0, 0x7f0902a4

    .line 11
    invoke-virtual {v9, v0, v5, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v0, 0x7f090266

    .line 12
    invoke-virtual {v9, v0, v5, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v11, 0x7f09020f

    .line 13
    invoke-virtual {v9, v11, v5, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v12, 0x7f09024f

    .line 14
    invoke-virtual {v9, v12, v5, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v0, 0x7f090143

    const v2, 0x7f0801a7

    .line 15
    invoke-virtual {v9, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 16
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v8}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "appWidgetMinHeight"

    .line 18
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x78

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    div-int/lit8 v0, v0, 0x50

    add-int/lit8 v5, v0, 0x1

    .line 20
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v0

    invoke-virtual {v0, v8}, Luv6;->j(I)Ljava/lang/String;

    move-result-object v15

    .line 21
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v0

    invoke-virtual {v0, v8}, Luv6;->m(I)Z

    move-result v6

    const/16 v16, 0x0

    .line 22
    :try_start_0
    sget-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    .line 23
    :try_start_1
    array-length v0, v4

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    .line 24
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v0

    invoke-virtual {v0, v8}, Luv6;->f(I)I

    move-result v0

    invoke-static {v7, v15, v0, v6}, Lep6;->t(Landroid/content/Context;Ljava/lang/String;IZ)[J

    move-result-object v4

    .line 25
    sget-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v4, v16

    .line 26
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    if-eqz v15, :cond_3

    const-string v0, "feed/"

    .line 27
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v15

    goto :goto_3

    :cond_3
    move-object/from16 v0, v16

    :goto_3
    if-eqz v15, :cond_4

    const-string v3, "user/"

    .line 28
    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v15

    goto :goto_4

    :cond_4
    move-object/from16 v3, v16

    .line 29
    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v12

    invoke-virtual {v12, v8}, Luv6;->h(I)I

    move-result v12

    .line 30
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v11

    invoke-virtual {v11, v8}, Luv6;->l(I)Ljava/lang/String;

    move-result-object v11

    .line 31
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v13

    .line 32
    iget-object v13, v13, Luv6;->a:Landroid/content/SharedPreferences;

    const-string v1, "show_summary"

    invoke-static {v8, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 33
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Luv6;->b(Landroid/content/Context;I)Z

    move-result v13

    .line 34
    invoke-static/range {p0 .. p0}, Liw6;->a0(Landroid/content/Context;)Z

    move-result v14

    invoke-static {v7, v14}, Llw6;->n(Landroid/content/Context;Z)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 35
    const-class v14, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    goto :goto_5

    .line 36
    :cond_5
    const-class v14, Lcom/noinnion/android/greader/ui/home/HomeActivity;

    :goto_5
    const-string v17, "greader://widget/id/"

    .line 37
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    move/from16 v17, v6

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const v6, 0x7f090154

    move-object/from16 v18, v15

    const/16 v15, 0x8

    .line 38
    invoke-virtual {v9, v6, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-nez v4, :cond_6

    const/4 v6, 0x0

    goto :goto_6

    .line 39
    :cond_6
    array-length v6, v4

    :goto_6
    const-string v15, "force_recreate"

    move/from16 v19, v5

    const-string v5, "subUid"

    move/from16 v20, v1

    const-string v1, "appWidgetId"

    move-object/from16 v21, v1

    if-nez v6, :cond_9

    const v1, 0x7f0900a3

    .line 40
    invoke-virtual {v9, v1, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f11036e

    .line 41
    invoke-virtual {v7, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f09031c

    invoke-virtual {v9, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 42
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v7, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz v0, :cond_7

    .line 44
    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    if-eqz v3, :cond_8

    const-string v2, "tagUid"

    .line 45
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    const/4 v2, 0x1

    .line 46
    invoke-virtual {v1, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "startup_sync"

    .line 47
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    .line 48
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v4, 0x0

    .line 49
    invoke-static {v7, v4, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v6, 0x7f090191

    .line 50
    invoke-virtual {v9, v6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f09020f

    const/4 v6, 0x4

    .line 51
    invoke-virtual {v9, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f09024f

    .line 52
    invoke-virtual {v9, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f09031c

    .line 53
    invoke-virtual {v9, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f090154

    const/16 v4, 0x8

    .line 54
    invoke-virtual {v9, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f090132

    .line 55
    invoke-virtual {v9, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f090214

    .line 56
    invoke-virtual {v9, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move-object v1, v0

    move-object v4, v3

    move-object v2, v5

    move-object/from16 v16, v14

    move-object v5, v15

    move-object/from16 v14, v21

    goto/16 :goto_13

    :cond_9
    const/4 v1, 0x4

    const/high16 v22, 0x8000000

    add-int/lit8 v1, v12, 0x1

    if-le v1, v6, :cond_a

    add-int/lit8 v12, v6, -0x1

    .line 57
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v1

    invoke-virtual {v1, v8, v12}, Luv6;->n(II)V

    :cond_a
    move-object/from16 v23, v3

    .line 58
    aget-wide v3, v4, v12

    const/4 v1, 0x0

    invoke-static {v7, v3, v4, v1}, Lap6;->l(Landroid/content/Context;JZ)Lap6;

    move-result-object v4

    if-nez v4, :cond_b

    return-object v16

    .line 59
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v12, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v16, v3

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v11, v5

    move/from16 v24, v6

    iget-wide v5, v4, Lap6;->q:J

    const-wide/16 v25, 0x3e8

    mul-long v5, v5, v25

    invoke-static {v7, v5, v6}, Ln56;->y0(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0900a3

    invoke-virtual {v9, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz v2, :cond_c

    const/4 v3, 0x1

    goto :goto_7

    :cond_c
    const/4 v3, 0x2

    :goto_7
    const-string v5, "setMaxLines"

    const v6, 0x7f09031c

    .line 60
    invoke-virtual {v9, v6, v5, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v1, 0x7f09031e

    if-eqz v2, :cond_d

    const/4 v3, 0x2

    goto :goto_8

    :cond_d
    const/4 v3, 0x4

    .line 61
    :goto_8
    invoke-virtual {v9, v1, v5, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    if-nez v13, :cond_f

    .line 62
    invoke-virtual {v4}, Lap6;->p()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v9, v6, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v2, :cond_e

    const/16 v1, 0x10

    goto :goto_9

    :cond_e
    const/16 v1, 0x12

    :goto_9
    int-to-float v1, v1

    const/4 v2, 0x2

    .line 64
    invoke-virtual {v9, v6, v2, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 65
    iget-object v1, v4, Lap6;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v9, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f090214

    const/16 v2, 0x8

    .line 66
    invoke-virtual {v9, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f090154

    .line 67
    invoke-virtual {v9, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f090132

    const/4 v2, 0x0

    .line 68
    invoke-virtual {v9, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 69
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    new-instance v5, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;

    move-object/from16 v3, v21

    const/high16 v2, 0x8000000

    const/16 v21, 0x4

    move-object v1, v5

    move-object/from16 p2, v11

    const/high16 v11, 0x8000000

    move v2, v13

    move/from16 v11, v16

    move-object/from16 v13, v23

    move-object/from16 v16, v14

    move-object v14, v3

    move-object v3, v4

    move-object/from16 v22, v15

    move-object v15, v4

    move-object v4, v9

    move-object/from16 v27, p2

    move-object v13, v5

    move-object/from16 v5, p0

    move/from16 v28, v17

    move-object/from16 v17, v0

    move/from16 v0, v24

    move/from16 v24, v12

    move-object v12, v6

    move/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;-><init>(ZLap6;Landroid/widget/RemoteViews;Landroid/content/Context;I)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_c

    :cond_f
    move-object/from16 v27, v11

    move-object/from16 v22, v15

    move/from16 v11, v16

    move/from16 v28, v17

    move-object/from16 v17, v0

    move-object v15, v4

    move-object/from16 v16, v14

    move-object/from16 v14, v21

    move/from16 v0, v24

    const/16 v21, 0x4

    move/from16 v24, v12

    const v1, 0x7f090154

    const/16 v3, 0x8

    .line 71
    invoke-virtual {v9, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f090132

    .line 72
    invoke-virtual {v9, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f09031c

    .line 73
    invoke-virtual {v9, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f090214

    const/4 v4, 0x0

    .line 74
    invoke-virtual {v9, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 75
    iget-object v1, v15, Lap6;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x14

    if-eqz v2, :cond_10

    rsub-int/lit8 v1, v1, 0x10

    goto :goto_a

    :cond_10
    rsub-int/lit8 v1, v1, 0x16

    :goto_a
    int-to-float v1, v1

    const v4, 0x7f09031e

    const/4 v6, 0x2

    .line 76
    invoke-virtual {v9, v4, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 77
    iget-object v1, v15, Lap6;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v9, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-nez v2, :cond_11

    if-eqz v20, :cond_11

    const v1, 0x7f0902e1

    const/4 v3, 0x0

    goto :goto_b

    :cond_11
    const v1, 0x7f0902e1

    .line 78
    :goto_b
    invoke-virtual {v9, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 79
    iget-object v2, v15, Lap6;->i:Ljava/lang/String;

    invoke-static {v2}, Ln56;->l2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move/from16 v2, v19

    const/4 v3, 0x2

    if-le v2, v3, :cond_12

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    .line 80
    invoke-virtual {v9, v1, v5, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_c

    .line 81
    :cond_12
    invoke-virtual {v9, v1, v5, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 82
    :goto_c
    invoke-static/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object v1

    invoke-virtual {v1, v8}, Luv6;->i(I)I

    move-result v1

    if-lez v1, :cond_14

    .line 83
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;

    invoke-direct {v2, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    invoke-virtual {v2, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-le v0, v11, :cond_13

    const-string v3, "com.noinnion.android.greader.reader.action.WIDGET_NEXT"

    .line 85
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d

    :cond_13
    const-string v3, "com.noinnion.android.greader.reader.action.WIDGET_FIRST"

    .line 86
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    :goto_d
    invoke-virtual {v2, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x8000000

    const/4 v4, 0x0

    .line 88
    invoke-static {v7, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "alarm"

    .line 89
    invoke-virtual {v7, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    const/4 v4, 0x3

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v12, v1

    add-long/2addr v5, v12

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 91
    :cond_14
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;

    invoke-direct {v1, v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    add-int/lit8 v12, v24, -0x1

    if-ltz v12, :cond_15

    const-string v2, "com.noinnion.android.greader.reader.action.WIDGET_PREV"

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_e

    :cond_15
    const-string v2, "com.noinnion.android.greader.reader.action.WIDGET_LAST"

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    :goto_e
    invoke-virtual {v1, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    .line 96
    invoke-static {v7, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f09024f

    .line 97
    invoke-virtual {v9, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v1, 0x1

    if-le v0, v1, :cond_16

    const/4 v1, 0x0

    goto :goto_f

    :cond_16
    const/4 v1, 0x4

    .line 98
    :goto_f
    invoke-virtual {v9, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 99
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;

    invoke-direct {v1, v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-ge v11, v0, :cond_17

    const-string v2, "com.noinnion.android.greader.reader.action.WIDGET_NEXT"

    .line 101
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_10

    :cond_17
    const-string v2, "com.noinnion.android.greader.reader.action.WIDGET_FIRST"

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    :goto_10
    invoke-virtual {v1, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    .line 104
    invoke-static {v7, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f09020f

    .line 105
    invoke-virtual {v9, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v1, 0x1

    if-le v0, v1, :cond_18

    const/4 v0, 0x0

    goto :goto_11

    :cond_18
    const/4 v0, 0x4

    .line 106
    :goto_11
    invoke-virtual {v9, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    if-eqz v17, :cond_19

    .line 109
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_19
    if-eqz v23, :cond_1a

    const-string v3, "tagUid"

    move-object/from16 v4, v23

    .line 110
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_12

    :cond_1a
    move-object/from16 v4, v23

    .line 111
    :goto_12
    iget-wide v5, v15, Lap6;->e:J

    const-string v3, "itemId"

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "cursorPosition"

    move/from16 v12, v24

    .line 112
    invoke-virtual {v0, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "unreadOnly"

    move/from16 v5, v28

    .line 113
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    div-int/lit8 v12, v12, 0x32

    const/4 v3, 0x1

    add-int/2addr v12, v3

    const-string v5, "page"

    .line 115
    invoke-virtual {v0, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v5, v22

    .line 116
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x8000000

    .line 117
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v6, 0x0

    .line 118
    invoke-static {v7, v6, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v3, 0x7f090191

    .line 119
    invoke-virtual {v9, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 120
    :goto_13
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v3, v16

    invoke-direct {v0, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz v1, :cond_1b

    .line 122
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1b
    if-eqz v4, :cond_1c

    const-string v1, "tagUid"

    .line 123
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1c
    const/4 v1, 0x1

    .line 124
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "startup_sync"

    .line 125
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 127
    invoke-static {v7, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v3, 0x7f0900a3

    .line 128
    invoke-virtual {v9, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;

    invoke-direct {v0, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "com.noinnion.android.greader.reader.action.WIDGET_SYNC"

    .line 131
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-virtual {v0, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    invoke-static {v7, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f090266

    .line 134
    invoke-virtual {v9, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/noinnion/android/greader/ui/widget/WidgetMediumConfigureActivity;

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 137
    invoke-virtual {v0, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x3

    const-string v2, "app_widget_type"

    .line 138
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "app_widget_tag"

    move-object/from16 v2, v18

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 141
    invoke-static {v7, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0902a4

    .line 142
    invoke-virtual {v9, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v9
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 2
    sget-object p2, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->remove(I)V

    const/4 p2, 0x0

    .line 3
    invoke-static {p1, p3, p2}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->a(Landroid/content/Context;IZ)V

    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b(Landroid/content/Context;)Luv6;

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

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/noinnion/android/greader/ui/widget/WidgetService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "app_widget_type"

    const/4 v2, 0x3

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

    goto/16 :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_1
    if-eqz v4, :cond_9

    .line 11
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "com.noinnion.android.greader.reader.action.WIDGET_FIRST"

    const-string v6, "com.noinnion.android.greader.reader.action.WIDGET_LAST"

    const-string v7, "com.noinnion.android.greader.reader.action.WIDGET_PREV"

    const-string v8, "com.noinnion.android.greader.reader.action.WIDGET_NEXT"

    if-nez v1, :cond_2

    .line 12
    :try_start_1
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_2
    if-nez v2, :cond_3

    return-void

    .line 16
    :cond_3
    invoke-static {p1}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->b(Landroid/content/Context;)Luv6;

    move-result-object p2

    .line 17
    invoke-virtual {p2, v2}, Luv6;->h(I)I

    move-result v1

    .line 18
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p2, v2}, Luv6;->j(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lyo6;->g(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 21
    invoke-virtual {p2, v2, v1}, Luv6;->n(II)V

    .line 22
    invoke-static {p1, v2, v3}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->a(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 23
    :cond_5
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v1, v1, -0x1

    .line 24
    invoke-virtual {p2, v2, v1}, Luv6;->n(II)V

    .line 25
    invoke-static {p1, v2, v3}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->a(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 26
    :cond_6
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27
    sget-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-nez v0, :cond_7

    .line 28
    invoke-virtual {p2, v2}, Luv6;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2}, Luv6;->f(I)I

    move-result v1

    invoke-virtual {p2, v2}, Luv6;->m(I)Z

    move-result v4

    invoke-static {p1, v0, v1, v4}, Lep6;->t(Landroid/content/Context;Ljava/lang/String;IZ)[J

    move-result-object v0

    .line 29
    sget-object v1, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    :cond_7
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 31
    invoke-virtual {p2, v2, v0}, Luv6;->n(II)V

    .line 32
    invoke-static {p1, v2, v3}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->a(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 33
    :cond_8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 34
    invoke-virtual {p2, v2, v3}, Luv6;->n(II)V

    .line 35
    invoke-static {p1, v2, v3}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->a(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 36
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_0
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
    sget-object v3, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    invoke-static {p1, v2, v0}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->a(Landroid/content/Context;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
