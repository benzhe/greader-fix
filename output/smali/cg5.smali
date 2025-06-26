.class public final synthetic Lcg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls96;


# static fields
.field public static final a:Lcg5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcg5;

    invoke-direct {v0}, Lcg5;-><init>()V

    sput-object v0, Lcg5;->a:Lcg5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
