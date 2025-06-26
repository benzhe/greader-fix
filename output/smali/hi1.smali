.class public final Lhi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Ldk1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lgi1;


# direct methods
.method public constructor <init>(Lgi1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lhi1;->a:Lgi1;

    return-void
.end method

.method public static a(Lgi1;)Ldk1;
    .locals 1

    .line 1
    iget-object p0, p0, Lgi1;->a:Ldk1;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lhi1;->a:Lgi1;

    invoke-static {v0}, Lhi1;->a(Lgi1;)Ldk1;

    move-result-object v0

    return-object v0
.end method
