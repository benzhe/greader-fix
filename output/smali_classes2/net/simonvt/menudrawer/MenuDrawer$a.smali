.class public Lnet/simonvt/menudrawer/MenuDrawer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/menudrawer/MenuDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lnet/simonvt/menudrawer/MenuDrawer;


# direct methods
.method public constructor <init>(Lnet/simonvt/menudrawer/MenuDrawer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer$a;->e:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer$a;->e:Lnet/simonvt/menudrawer/MenuDrawer;

    .line 2
    sget-object v1, Lnet/simonvt/menudrawer/MenuDrawer;->b0:Landroid/view/animation/Interpolator;

    .line 3
    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->a()V

    return-void
.end method
