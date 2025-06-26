.class public final synthetic Lst;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv$a;


# instance fields
.field public final a:Ltt;

.field public final b:Lds;

.field public final c:I


# direct methods
.method public constructor <init>(Ltt;Lds;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lst;->a:Ltt;

    iput-object p2, p0, Lst;->b:Lds;

    iput p3, p0, Lst;->c:I

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lst;->a:Ltt;

    iget-object v1, p0, Lst;->b:Lds;

    iget v2, p0, Lst;->c:I

    .line 1
    iget-object v0, v0, Ltt;->d:Lzt;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Lzt;->a(Lds;I)V

    const/4 v0, 0x0

    return-object v0
.end method
