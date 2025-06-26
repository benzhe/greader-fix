.class public final Lh42;
.super Ln42;
.source "SourceFile"


# instance fields
.field public final n:Ldd1;


# direct methods
.method public constructor <init>(Lx91;Lqa1;Ldb1;Lnb1;Lld1;Lwb1;Lig1;Ldd1;Lga1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Ln42;-><init>(Lx91;Lqa1;Ldb1;Lnb1;Lld1;Lwb1;Lig1;Ldd1;Lga1;)V

    .line 2
    iput-object p8, p0, Lh42;->n:Ldd1;

    return-void
.end method


# virtual methods
.method public final onAdImpression()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh42;->n:Ldd1;

    .line 2
    sget-object v1, Lhd1;->a:Lzd1;

    invoke-virtual {v0, v1}, Lxd1;->D0(Lzd1;)V

    return-void
.end method
