.class public Lo0$b;
.super Loa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo0;


# direct methods
.method public constructor <init>(Lo0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0$b;->a:Lo0;

    invoke-direct {p0}, Loa;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lo0$b;->a:Lo0;

    const/4 v0, 0x0

    iput-object v0, p1, Lo0;->u:Lb1;

    .line 2
    iget-object p1, p1, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
