.class public final synthetic Lg66;
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

    iput-object p1, p0, Lg66;->e:Lk66;

    iput-object p2, p0, Lg66;->f:Lo96;

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lg66;->e:Lk66;

    iget-object v1, p0, Lg66;->f:Lo96;

    check-cast p1, Lz56;

    .line 1
    sget-object v2, Lk66;->d:La66;

    .line 2
    invoke-virtual {v0, p1, v1}, Lk66;->b(Lz56;Lo96;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
