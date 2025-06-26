.class public final Lx01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lop0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lu01;


# direct methods
.method public constructor <init>(Lu01;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx01;->a:Lu01;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lx01;->a:Lu01;

    .line 2
    iget-object v0, v0, Lu01;->a:Lu01$a;

    check-cast v0, Lmz0;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lkp0;

    invoke-direct {v0}, Lkp0;-><init>()V

    return-object v0
.end method
