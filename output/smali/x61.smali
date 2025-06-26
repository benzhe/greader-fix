.class public final Lx61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Ljava/lang/String;",
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
    iput-object p1, p0, Lx61;->a:Lv61;

    return-void
.end method

.method public static a(Lv61;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lv61;->c:Ljava/lang/String;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lx61;->a:Lv61;

    invoke-static {v0}, Lx61;->a(Lv61;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
