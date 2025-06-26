.class public final Lgq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgq;->e(Lcn;)Lhb7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Luc7<",
        "Len;",
        "Lec7<",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lgq;

.field public final synthetic f:Lcn;


# direct methods
.method public constructor <init>(Lgq;Lcn;)V
    .locals 0

    iput-object p1, p0, Lgq$a;->e:Lgq;

    iput-object p2, p0, Lgq$a;->f:Lcn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Len;

    const-string v0, "client"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lfq;

    invoke-direct {v0, p0, p1}, Lfq;-><init>(Lgq$a;Len;)V

    .line 4
    new-instance p1, Leh7;

    invoke-direct {p1, v0}, Leh7;-><init>(Ldc7;)V

    return-object p1
.end method
