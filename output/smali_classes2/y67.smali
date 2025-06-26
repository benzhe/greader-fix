.class public Ly67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:La67$a;

.field public final synthetic f:J


# direct methods
.method public constructor <init>(La67$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly67;->e:La67$a;

    iput-wide p2, p0, Ly67;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ly67;->e:La67$a;

    iget-wide v1, p0, Ly67;->f:J

    invoke-interface {v0, v1, v2}, La67$a;->b(J)V

    return-void
.end method
