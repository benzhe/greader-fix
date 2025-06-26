.class public final Lcy2;
.super Lax2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lax2<",
        "Li43;",
        "Lk03;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lax2;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lk03;

    .line 2
    new-instance v0, Lh33;

    .line 3
    invoke-virtual {p1}, Lk03;->B()Lk53;

    move-result-object v1

    invoke-virtual {v1}, Lk53;->d()[B

    move-result-object v1

    invoke-virtual {p1}, Lk03;->D()Lo03;

    move-result-object p1

    invoke-virtual {p1}, Lo03;->x()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lh33;-><init>([BI)V

    return-object v0
.end method
