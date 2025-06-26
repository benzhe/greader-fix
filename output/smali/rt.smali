.class public final synthetic Lrt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv$a;


# instance fields
.field public final a:Lcu;


# direct methods
.method public constructor <init>(Lcu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrt;->a:Lcu;

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lrt;->a:Lcu;

    invoke-interface {v0}, Lcu;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
