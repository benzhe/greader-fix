.class public Lpv6;
.super Ll07;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lqv6;


# direct methods
.method public constructor <init>(Lqv6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpv6;->a:Lqv6;

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
    iget-object p1, p0, Lpv6;->a:Lqv6;

    .line 3
    iget-object p2, p1, Lqv6;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    .line 4
    iget p1, p1, Lqv6;->c:I

    const p3, 0x7f090186

    invoke-virtual {p2, p1, p3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    :cond_0
    return-void
.end method
