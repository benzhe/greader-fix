.class public final Lgj3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public c:Z

.field public d:Ldk3;

.field public e:Lgj3;


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lgj3;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 3
    iput-wide p1, p0, Lgj3;->b:J

    return-void
.end method


# virtual methods
.method public final a()Lgj3;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lgj3;->d:Ldk3;

    .line 2
    iget-object v0, p0, Lgj3;->e:Lgj3;

    return-object v0
.end method
