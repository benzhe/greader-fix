.class public final synthetic Liv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhk3;


# instance fields
.field public final a:Lhk3;

.field public final b:[B


# direct methods
.method public constructor <init>(Lhk3;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liv0;->a:Lhk3;

    iput-object p2, p0, Liv0;->b:[B

    return-void
.end method


# virtual methods
.method public final a()Lek3;
    .locals 4

    .line 1
    iget-object v0, p0, Liv0;->a:Lhk3;

    iget-object v1, p0, Liv0;->b:[B

    .line 2
    invoke-interface {v0}, Lhk3;->a()Lek3;

    move-result-object v0

    .line 3
    new-instance v2, Lfk3;

    invoke-direct {v2, v1}, Lfk3;-><init>([B)V

    .line 4
    new-instance v3, Lpv0;

    array-length v1, v1

    invoke-direct {v3, v2, v1, v0}, Lpv0;-><init>(Lek3;ILek3;)V

    return-object v3
.end method
