.class public Lqv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# static fields
.field public static k:Luv6;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/database/Cursor;

.field public final c:I

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Lap6;

.field public g:Z

.field public h:I

.field public i:I

.field public final j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lqv6;->j:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lqv6;->a:Landroid/content/Context;

    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lqv6;->c:I

    .line 5
    invoke-static {p1}, Lqv6;->a(Landroid/content/Context;)Luv6;

    move-result-object v0

    invoke-virtual {v0, p2}, Luv6;->j(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqv6;->d:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lqv6;->a(Landroid/content/Context;)Luv6;

    move-result-object p1

    invoke-virtual {p1, p2}, Luv6;->m(I)Z

    move-result p1

    iput-boolean p1, p0, Lqv6;->e:Z

    .line 7
    invoke-virtual {p0}, Lqv6;->b()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Luv6;
    .locals 1

    .line 1
    sget-object v0, Lqv6;->k:Luv6;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Luv6;

    invoke-direct {v0, p0}, Luv6;-><init>(Landroid/content/Context;)V

    sput-object v0, Lqv6;->k:Luv6;

    .line 3
    :cond_0
    sget-object p0, Lqv6;->k:Luv6;

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lqv6;->a:Landroid/content/Context;

    invoke-static {v0}, Lqv6;->a(Landroid/content/Context;)Luv6;

    move-result-object v0

    iget v1, p0, Lqv6;->c:I

    .line 2
    iget-object v0, v0, Luv6;->a:Landroid/content/SharedPreferences;

    const-string v2, "text_size"

    invoke-static {v1, v2}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 5
    :goto_0
    iput v0, p0, Lqv6;->h:I

    .line 6
    iget-object v0, p0, Lqv6;->a:Landroid/content/Context;

    invoke-static {v0}, Lqv6;->a(Landroid/content/Context;)Luv6;

    move-result-object v0

    iget v1, p0, Lqv6;->c:I

    invoke-virtual {v0, v1}, Luv6;->k(I)I

    move-result v0

    iput v0, p0, Lqv6;->i:I

    .line 7
    iget-object v0, p0, Lqv6;->a:Landroid/content/Context;

    invoke-static {v0}, Lqv6;->a(Landroid/content/Context;)Luv6;

    move-result-object v0

    iget-object v1, p0, Lqv6;->a:Landroid/content/Context;

    iget v2, p0, Lqv6;->c:I

    invoke-virtual {v0, v1, v2}, Luv6;->b(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lqv6;->g:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lqv6;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 8

    .line 1
    iget-object v0, p0, Lqv6;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lqv6;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lqv6;->f:Lap6;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lap6;

    iget-object v1, p0, Lqv6;->b:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lap6;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lqv6;->f:Lap6;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lqv6;->b:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lap6;->q(Landroid/database/Cursor;)V

    .line 5
    :goto_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lqv6;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0117

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 6
    iget v1, p0, Lqv6;->i:I

    const v2, 0x7f0900a3

    const-string v3, "setTextColor"

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7
    iget v1, p0, Lqv6;->i:I

    const v4, 0x7f09031c

    invoke-virtual {v0, v4, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8
    iget-object v1, p0, Lqv6;->f:Lap6;

    iget-object v1, v1, Lap6;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 9
    iget v1, p0, Lqv6;->h:I

    const/4 v3, 0x2

    int-to-float v1, v1

    .line 10
    invoke-virtual {v0, v4, v3, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 11
    iget-object v1, p0, Lqv6;->f:Lap6;

    iget-object v1, v1, Lap6;->A:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lqv6;->f:Lap6;

    iget-object v1, v1, Lap6;->A:Ljava/lang/String;

    :goto_1
    const-string v3, " / "

    .line 12
    invoke-static {v1, v3}, Ljo;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lqv6;->a:Landroid/content/Context;

    iget-object v4, p0, Lqv6;->f:Lap6;

    iget-wide v4, v4, Lap6;->q:J

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-static {v3, v4, v5}, Ln56;->y0(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v1, 0x8

    const v2, 0x7f09031a

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 14
    iget-boolean v1, p0, Lqv6;->g:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lqv6;->f:Lap6;

    invoke-virtual {v1}, Lap6;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, Lqv6;->f:Lap6;

    invoke-virtual {v1}, Lap6;->n()Ljava/lang/String;

    move-result-object v1

    .line 16
    sget v3, Lcom/noinnion/android/reader/provider/ImageLoaderProvider;->e:I

    .line 17
    invoke-static {}, Lhz6;->j()Lhz6;

    move-result-object v3

    invoke-virtual {v3}, Lhz6;->i()Lty6;

    move-result-object v3

    invoke-interface {v3, v1}, Lty6;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    iget-object v1, p0, Lqv6;->f:Lap6;

    invoke-virtual {v1}, Lap6;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lgy6;->d([B)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.noinnion.android.greader.reader.imageloader"

    .line 20
    invoke-static {v3, v1}, Lcom/noinnion/android/reader/provider/ImageLoaderProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2

    .line 23
    :cond_3
    iget-object v1, p0, Lqv6;->j:Landroid/os/Handler;

    new-instance v2, Llv6;

    invoke-direct {v2, p0}, Llv6;-><init>(Lqv6;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    :cond_4
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.noinnion.android.greader.reader.action.WIDGET_ITEM_CLICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 26
    iget-object v3, p0, Lqv6;->f:Lap6;

    iget-wide v3, v3, Lap6;->e:J

    const-string v5, "itemId"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "cursorPosition"

    .line 27
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    iget-boolean v3, p0, Lqv6;->e:Z

    const-string v4, "unreadOnly"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    div-int/lit8 p1, p1, 0x32

    add-int/lit8 p1, p1, 0x1

    const-string v3, "page"

    .line 30
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    iget p1, p0, Lqv6;->c:I

    const-string v3, "appWidgetId"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const p1, 0x7f090366

    .line 33
    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    return-object v0

    :cond_5
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDataSetChanged()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lqv6;->b()V

    .line 2
    iget-object v0, p0, Lqv6;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4
    :cond_0
    iget-object v0, p0, Lqv6;->a:Landroid/content/Context;

    invoke-static {v0}, Lqv6;->a(Landroid/content/Context;)Luv6;

    move-result-object v0

    iget v1, p0, Lqv6;->c:I

    invoke-virtual {v0, v1}, Luv6;->j(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqv6;->d:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lqv6;->a:Landroid/content/Context;

    invoke-static {v0}, Lqv6;->a(Landroid/content/Context;)Luv6;

    move-result-object v0

    iget v1, p0, Lqv6;->c:I

    invoke-virtual {v0, v1}, Luv6;->m(I)Z

    move-result v0

    iput-boolean v0, p0, Lqv6;->e:Z

    .line 6
    iget-object v0, p0, Lqv6;->a:Landroid/content/Context;

    invoke-static {v0}, Lqv6;->a(Landroid/content/Context;)Luv6;

    move-result-object v0

    iget v1, p0, Lqv6;->c:I

    invoke-virtual {v0, v1}, Luv6;->f(I)I

    move-result v0

    .line 7
    iget-object v1, p0, Lqv6;->a:Landroid/content/Context;

    invoke-static {v1}, Lqv6;->a(Landroid/content/Context;)Luv6;

    move-result-object v1

    iget v2, p0, Lqv6;->c:I

    invoke-virtual {v1, v2}, Luv6;->m(I)Z

    move-result v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lqv6;->a:Landroid/content/Context;

    invoke-static {v3}, Lon6;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v2, p0, Lqv6;->a:Landroid/content/Context;

    iget-object v3, p0, Lqv6;->d:Ljava/lang/String;

    invoke-static {v2, v3, v1, v0}, Lep6;->s(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lqv6;->b:Landroid/database/Cursor;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lqv6;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method
