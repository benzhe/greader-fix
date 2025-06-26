.class public final synthetic Lnv0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcv0;


# direct methods
.method public constructor <init>(Lcv0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnv0;->a:Lcv0;

    return-void
.end method


# virtual methods
.method public final a(ZJ)V
    .locals 1

    iget-object v0, p0, Lnv0;->a:Lcv0;

    .line 1
    iget-object v0, v0, Lcv0;->o:Lmv0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lmv0;->b(ZJ)V

    :cond_0
    return-void
.end method
