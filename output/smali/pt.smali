.class public final synthetic Lpt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv$a;


# instance fields
.field public final a:Ltt;

.field public final b:Lds;


# direct methods
.method public constructor <init>(Ltt;Lds;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpt;->a:Ltt;

    iput-object p2, p0, Lpt;->b:Lds;

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lpt;->a:Ltt;

    iget-object v1, p0, Lpt;->b:Lds;

    .line 1
    iget-object v0, v0, Ltt;->c:Lcu;

    invoke-interface {v0, v1}, Lcu;->B(Lds;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
