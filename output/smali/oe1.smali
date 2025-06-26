.class public final Loe1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Ljava/util/Set<",
        "Lsf1<",
        "Lhc1;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lyd1;


# direct methods
.method public constructor <init>(Lyd1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Loe1;->a:Lyd1;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Loe1;->a:Lyd1;

    .line 2
    iget-object v0, v0, Lyd1;->j:Ljava/util/Set;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
