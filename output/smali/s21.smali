.class public final Ls21;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Lfm3;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ls21;->a:Z

    .line 3
    iput-boolean v0, p0, Ls21;->b:Z

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Ls21;->c:J

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ls21;->e:Lfm3;

    return-void
.end method
