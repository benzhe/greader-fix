.class public Lu85;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv85;


# instance fields
.field public final a:Landroid/view/ViewOverlay;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    iput-object p1, p0, Lu85;->a:Landroid/view/ViewOverlay;

    return-void
.end method
