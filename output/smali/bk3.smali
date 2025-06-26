.class public final Lbk3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnj3;

.field public final b:Lak3;

.field public final c:Ljava/lang/Object;

.field public final d:[Lqe3;


# direct methods
.method public constructor <init>(Lnj3;Lak3;Ljava/lang/Object;[Lqe3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbk3;->a:Lnj3;

    .line 3
    iput-object p2, p0, Lbk3;->b:Lak3;

    .line 4
    iput-object p3, p0, Lbk3;->c:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lbk3;->d:[Lqe3;

    return-void
.end method


# virtual methods
.method public final a(Lbk3;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lbk3;->b:Lak3;

    .line 2
    iget-object v1, v1, Lak3;->b:[Lyj3;

    aget-object v1, v1, p2

    .line 3
    iget-object v2, p1, Lbk3;->b:Lak3;

    .line 4
    iget-object v2, v2, Lak3;->b:[Lyj3;

    aget-object v2, v2, p2

    .line 5
    invoke-static {v1, v2}, Lel3;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbk3;->d:[Lqe3;

    aget-object v1, v1, p2

    iget-object p1, p1, Lbk3;->d:[Lqe3;

    aget-object p1, p1, p2

    .line 6
    invoke-static {v1, p1}, Lel3;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
