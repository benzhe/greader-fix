.class public final Lnz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lds4;

.field public final synthetic f:J

.field public final synthetic g:I

.field public final synthetic h:J

.field public final synthetic i:Z

.field public final synthetic j:Lsz4;


# direct methods
.method public constructor <init>(Lsz4;Lds4;JIJZ)V
    .locals 0

    iput-object p1, p0, Lnz4;->j:Lsz4;

    iput-object p2, p0, Lnz4;->e:Lds4;

    iput-wide p3, p0, Lnz4;->f:J

    iput p5, p0, Lnz4;->g:I

    iput-wide p6, p0, Lnz4;->h:J

    iput-boolean p8, p0, Lnz4;->i:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lnz4;->j:Lsz4;

    iget-object v1, p0, Lnz4;->e:Lds4;

    .line 1
    invoke-virtual {v0, v1}, Lsz4;->z(Lds4;)V

    iget-object v0, p0, Lnz4;->j:Lsz4;

    iget-wide v1, p0, Lnz4;->f:J

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lsz4;->l(JZ)V

    iget-object v4, p0, Lnz4;->j:Lsz4;

    iget-object v5, p0, Lnz4;->e:Lds4;

    iget v6, p0, Lnz4;->g:I

    iget-wide v7, p0, Lnz4;->h:J

    iget-boolean v10, p0, Lnz4;->i:Z

    const/4 v9, 0x1

    .line 3
    invoke-static/range {v4 .. v10}, Lsz4;->t(Lsz4;Lds4;IJZZ)V

    return-void
.end method
