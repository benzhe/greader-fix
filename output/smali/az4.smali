.class public final Laz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:J

.field public final synthetic i:Lsz4;


# direct methods
.method public constructor <init>(Lsz4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    iput-object p1, p0, Laz4;->i:Lsz4;

    iput-object p2, p0, Laz4;->e:Ljava/lang/String;

    iput-object p3, p0, Laz4;->f:Ljava/lang/String;

    iput-object p4, p0, Laz4;->g:Ljava/lang/Object;

    iput-wide p5, p0, Laz4;->h:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Laz4;->i:Lsz4;

    iget-object v1, p0, Laz4;->e:Ljava/lang/String;

    iget-object v2, p0, Laz4;->f:Ljava/lang/String;

    iget-object v3, p0, Laz4;->g:Ljava/lang/Object;

    iget-wide v4, p0, Laz4;->h:J

    .line 1
    invoke-virtual/range {v0 .. v5}, Lsz4;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
