.class public final synthetic Lct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv$a;


# instance fields
.field public final a:Ldt;

.field public final b:Lds;

.field public final c:Las;


# direct methods
.method public constructor <init>(Ldt;Lds;Las;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lct;->a:Ldt;

    iput-object p2, p0, Lct;->b:Lds;

    iput-object p3, p0, Lct;->c:Las;

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lct;->a:Ldt;

    iget-object v1, p0, Lct;->b:Lds;

    iget-object v2, p0, Lct;->c:Las;

    .line 1
    iget-object v3, v0, Ldt;->d:Lcu;

    invoke-interface {v3, v1, v2}, Lcu;->n0(Lds;Las;)Lhu;

    .line 2
    iget-object v0, v0, Ldt;->a:Lzt;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lzt;->a(Lds;I)V

    const/4 v0, 0x0

    return-object v0
.end method
