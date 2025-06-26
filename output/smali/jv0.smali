.class public final synthetic Ljv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhk3;


# instance fields
.field public final a:Lcv0;

.field public final b:Lhk3;


# direct methods
.method public constructor <init>(Lcv0;Lhk3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljv0;->a:Lcv0;

    iput-object p2, p0, Ljv0;->b:Lhk3;

    return-void
.end method


# virtual methods
.method public final a()Lek3;
    .locals 8

    iget-object v5, p0, Ljv0;->a:Lcv0;

    iget-object v0, p0, Ljv0;->b:Lhk3;

    .line 1
    new-instance v7, Lzu0;

    iget-object v1, v5, Lcv0;->e:Landroid/content/Context;

    .line 2
    invoke-interface {v0}, Lhk3;->a()Lek3;

    move-result-object v2

    iget-object v3, v5, Lcv0;->s:Ljava/lang/String;

    iget v4, v5, Lcv0;->t:I

    new-instance v6, Lnv0;

    invoke-direct {v6, v5}, Lnv0;-><init>(Lcv0;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lzu0;-><init>(Landroid/content/Context;Lek3;Ljava/lang/String;ILsk3;Lnv0;)V

    return-object v7
.end method
