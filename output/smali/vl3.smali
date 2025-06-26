.class public final Lvl3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:J

.field public final synthetic g:Lrl3;


# direct methods
.method public constructor <init>(Lrl3;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvl3;->g:Lrl3;

    iput p2, p0, Lvl3;->e:I

    iput-wide p3, p0, Lvl3;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lvl3;->g:Lrl3;

    .line 2
    iget-object v0, v0, Lrl3;->b:Lsl3;

    .line 3
    iget v1, p0, Lvl3;->e:I

    check-cast v0, Lcv0;

    .line 4
    iget v2, v0, Lcv0;->q:I

    add-int/2addr v2, v1

    iput v2, v0, Lcv0;->q:I

    return-void
.end method
