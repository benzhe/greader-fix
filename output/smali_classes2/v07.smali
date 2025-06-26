.class public Lv07;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv07;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lv07;->a:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lv07;->b:Landroid/view/View;

    return-void
.end method
