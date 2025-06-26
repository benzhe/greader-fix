.class public final La71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lwk2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lv61;


# direct methods
.method public constructor <init>(Lv61;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La71;->a:Lv61;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, La71;->a:Lv61;

    .line 2
    iget-object v0, v0, Lv61;->a:Lhl2;

    iget-object v0, v0, Lhl2;->b:Lfl2;

    iget-object v0, v0, Lfl2;->b:Lwk2;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
