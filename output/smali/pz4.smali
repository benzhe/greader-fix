.class public final Lpz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lds4;

.field public final synthetic f:I

.field public final synthetic g:J

.field public final synthetic h:Z

.field public final synthetic i:Lsz4;


# direct methods
.method public constructor <init>(Lsz4;Lds4;IJZ)V
    .locals 0

    iput-object p1, p0, Lpz4;->i:Lsz4;

    iput-object p2, p0, Lpz4;->e:Lds4;

    iput p3, p0, Lpz4;->f:I

    iput-wide p4, p0, Lpz4;->g:J

    iput-boolean p6, p0, Lpz4;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lpz4;->i:Lsz4;

    iget-object v1, p0, Lpz4;->e:Lds4;

    .line 1
    invoke-virtual {v0, v1}, Lsz4;->z(Lds4;)V

    iget-object v2, p0, Lpz4;->i:Lsz4;

    iget-object v3, p0, Lpz4;->e:Lds4;

    iget v4, p0, Lpz4;->f:I

    iget-wide v5, p0, Lpz4;->g:J

    iget-boolean v8, p0, Lpz4;->h:Z

    const/4 v7, 0x0

    .line 2
    invoke-static/range {v2 .. v8}, Lsz4;->t(Lsz4;Lds4;IJZZ)V

    return-void
.end method
