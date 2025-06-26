.class public final Lvv6;
.super Ll07;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/widget/RemoteViews;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvv6;->a:Landroid/widget/RemoteViews;

    iput-object p2, p0, Lvv6;->b:Landroid/content/Context;

    iput p3, p0, Lvv6;->c:I

    invoke-direct {p0}, Ll07;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    const/16 p2, 0x32

    if-le p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lvv6;->a:Landroid/widget/RemoteViews;

    const p2, 0x7f090154

    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 3
    iget-object p1, p0, Lvv6;->a:Landroid/widget/RemoteViews;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4
    iget-object p1, p0, Lvv6;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    .line 5
    iget p2, p0, Lvv6;->c:I

    iget-object p3, p0, Lvv6;->a:Landroid/widget/RemoteViews;

    invoke-virtual {p1, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method
