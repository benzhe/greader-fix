.class public Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a$a;
.super Ll07;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a$a;->a:Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;

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
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a$a;->a:Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;->g:Landroid/widget/RemoteViews;

    const p2, 0x7f090154

    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a$a;->a:Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;->g:Landroid/widget/RemoteViews;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a$a;->a:Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;->h:Landroid/content/Context;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a$a;->a:Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;

    iget p3, p2, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;->i:I

    iget-object p2, p2, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;->g:Landroid/widget/RemoteViews;

    invoke-virtual {p1, p3, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method
