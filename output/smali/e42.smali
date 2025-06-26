.class public final Le42;
.super Ll32;
.source "SourceFile"


# instance fields
.field public final o:Ldd1;


# direct methods
.method public constructor <init>(Lx91;Lqa1;Ldb1;Lnb1;Lga1;Lld1;Lig1;Lwb1;Lcg1;Ldd1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Ll32;-><init>(Lx91;Lqa1;Ldb1;Lnb1;Lga1;Lld1;Lig1;Lwb1;Lcg1;Ldd1;)V

    .line 2
    iput-object p10, p0, Le42;->o:Ldd1;

    return-void
.end method


# virtual methods
.method public final onAdImpression()V
    .locals 2

    .line 1
    iget-object v0, p0, Le42;->o:Ldd1;

    .line 2
    sget-object v1, Lhd1;->a:Lzd1;

    invoke-virtual {v0, v1}, Lxd1;->D0(Lzd1;)V

    return-void
.end method
