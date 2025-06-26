.class public Lkv6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Lap6;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lkv6;->a:J

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lkv6;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lkv6;->c:Lap6;

    .line 5
    iput-object v0, p0, Lkv6;->d:Ljava/lang/String;

    .line 6
    iput-wide p1, p0, Lkv6;->a:J

    .line 7
    iput-object p3, p0, Lkv6;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lkv6;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lkv6;

    .line 3
    iget-wide v2, p1, Lkv6;->a:J

    iget-wide v4, p0, Lkv6;->a:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
