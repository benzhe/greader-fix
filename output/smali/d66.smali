.class public final synthetic Ld66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvc7;


# instance fields
.field public final e:Lk66;

.field public final f:Lo96;


# direct methods
.method public constructor <init>(Lk66;Lo96;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld66;->e:Lk66;

    iput-object p2, p0, Ld66;->f:Lo96;

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Ld66;->e:Lk66;

    iget-object v1, p0, Ld66;->f:Lo96;

    check-cast p1, Lz56;

    .line 1
    sget-object v2, Lk66;->d:La66;

    .line 2
    invoke-virtual {v0, p1, v1}, Lk66;->b(Lz56;Lo96;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lz56;->H()J

    move-result-wide v2

    invoke-virtual {v1}, Lo96;->a()J

    move-result-wide v0

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
