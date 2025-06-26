.class public final Lxl3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroid/view/Surface;

.field public final synthetic f:Lrl3;


# direct methods
.method public constructor <init>(Lrl3;Landroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxl3;->f:Lrl3;

    iput-object p2, p0, Lxl3;->e:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lxl3;->f:Lrl3;

    .line 2
    iget-object v0, v0, Lrl3;->b:Lsl3;

    .line 3
    check-cast v0, Lcv0;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
